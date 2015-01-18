<?php 
include_once "testmaker.inc.php";
class CTest extends CTestMaker 
{
	var $ID_TEST = 0;
	var $TestName = "";
	var $IsBlock = "";
	var $TestTime = 0;
	var $DisableShowPrevTask = "";
	var $IsTimeForOneQuestion = "";
	var $ShowTask = "";
	var $TaskURL = "";	
	function AddTest($TestName,$IsBlock,$TestTime,$DisableShowPrevTask,$IsTimeForOneQuestion,$ShowTask,$TaskURL)
	{
		if($this->IsTestCreator())
		{
			$TestName=$this->PrepareString($TestName);
			if(	strlen($TestName)==0||
				!$this->IsYN($IsBlock)||
				!$this->IsYN($IsTimeForOneQuestion)||
				!$this->IsYN($ShowTask))
			{	
				return false;
			}
			$TaskURL=$this->PrepareString($TaskURL);
			if(USE_TRANSACTION)
				$this->query("START TRANSACTION;");
			else
				$this->lock(array("tests","test_priv"));
			$Sql = sprintf("INSERT INTO tests (TestName,IsBlock,TestTime,DisableShowPrevTask,IsTimeForOneQuestion,ShowTask,TaskURL) VALUES ('%s','%s','%d','%s','%s','%s','%s');",
							$TestName,$IsBlock,$TestTime,$DisableShowPrevTask,$IsTimeForOneQuestion,$ShowTask,$TaskURL);
	        $this->query($Sql);
	        if(!$this->IsTestAdmin())
	        {
	        	$this->query("SELECT MAX(ID_TEST) FROM tests");
		 		$this->next_record();
		 		$ID_TEST=$this->f(0);
				$Sql=sprintf("INSERT INTO test_priv (ID_TEST,ID_TE,CanAdmin,CanChange) VALUES (%d,%d,'Y','Y')",
					$ID_TEST,
					$this->GetID_TE());
			 	$this->query($Sql);
	        }	        
			if(USE_TRANSACTION)
				$this->query("COMMIT;");
			else
				$this->unlock();	        
	        return true;
		}
		else
		{
			$this->LogOut();
			return false;
		}
	}	
	function UpdateTest($ID_TEST, $TestName, $IsBlock, $TestTime, $DisableShowPrevTask, $IsTimeForOneQuestion,$ShowTask,$TaskURL)
	{
		if($this->CanAdminTest($ID_TEST))
		{
			$TestName=$this->PrepareString($TestName);		
			if(	strlen($TestName)==0||
				!$this->IsYN($IsBlock)||
				!$this->IsYN($DisableShowPrevTask)||
				!$this->IsYN($IsTimeForOneQuestion)||
				!$this->IsYN($ShowTask))
			{	
				return false;
			}		
			$TaskURL=$this->PrepareString($TaskURL);
			/*if(strlen($TaskURL)==0)
			{
				return false;
			}*/
			$Sql = sprintf("UPDATE tests  SET TestName='%s',IsBlock='%s',TestTime='%s',DisableShowPrevTask = '%s',IsTimeForOneQuestion='%s',ShowTask='%s',TaskURL='%s' WHERE ID_TEST='%d';",
			 		$TestName,
			 		$IsBlock,
			 		$TestTime,
			 		$DisableShowPrevTask,
			 		$IsTimeForOneQuestion,
			 		$ShowTask,
			 		$TaskURL,
			 		$ID_TEST);
	        return $this->query($Sql);
		}
		else
		{
			$this->LogOut();
			return false;
		}
	}
	function DeleteTest($ID_TEST)
	{	
		if($this->CanAdminTest($ID_TEST))
		{			
			$this->GetInfoTest($ID_TEST);
			if(USE_TRANSACTION)
			{
				$this->query("START TRANSACTION;");
			}
			else
			{
				$this->lock(
				    array(
				        "tests",
				        "tests_blocks",
				        "level_question",
				        "test_priv",
				        "time_table",
				        "results_log_answers",
				        "results_log_answers3",
				        "results_log_answers45",
				        "results_log",
				        "results",
				        "questions",
				        "answers",
				        "answers2"));
			}
			$this->query("DELETE FROM results_log_answers USING results_log_answers, results_log, results
							WHERE results.ID_TEST=$ID_TEST AND 
								results.ID_RE=results_log.ID_RE AND
								results_log.ID_RE_LOG=results_log_answers.ID_RE_LOG;");

			$this->query("DELETE FROM results_log_answers3 USING results_log_answers3, results_log, results
							WHERE results.ID_TEST=$ID_TEST AND 
								results.ID_RE=results_log.ID_RE AND
								results_log.ID_RE_LOG=results_log_answers3.ID_RE_LOG;");

			$this->query("DELETE FROM results_log_answers45 USING results_log_answers45, results_log, results
							WHERE results.ID_TEST=$ID_TEST AND 
								results.ID_RE=results_log.ID_RE AND
								results_log.ID_RE_LOG=results_log_answers45.ID_RE_LOG;");
			
			$this->query("DELETE FROM results_log USING results_log, results
							WHERE results.ID_TEST=$ID_TEST AND 
								results.ID_RE=results_log.ID_RE;");
			$this->query("DELETE FROM results WHERE results.ID_TEST=$ID_TEST");
			$this->query("DELETE FROM time_table WHERE time_table.ID_TEST=$ID_TEST");
			$this->query("DELETE FROM test_priv WHERE test_priv.ID_TEST=$ID_TEST");			
			if($this->IsBlock=='Y')
			{
				$this->query("DELETE FROM tests_blocks WHERE tests_blocks.ID_TEST_BLOCK=$ID_TEST");			
			}
			else
			{
				$this->query("DELETE FROM tests_blocks WHERE tests_blocks.ID_TEST=$ID_TEST");
				//  Удалям логи ответов с других тестов
				// Дело в том что можно перенести задание с теста в тест, а данные в results_log_answers
				// Остаются без изменений
				$this->query("DELETE FROM results_log_answers USING results_log_answers, answers, questions
								WHERE questions.ID_TEST=$ID_TEST AND
								questions.ID_QU=answers.ID_QU AND
								results_log_answers.ID_AN = answers.ID_AN;");
				$this->query("DELETE FROM answers2 USING answers2, answers, questions 
							WHERE questions.ID_TEST=$ID_TEST AND
								questions.ID_QU=answers.ID_QU AND
								answers2.ID_AN = answers.ID_AN;");
				$this->query("DELETE FROM answers USING answers, questions 
							WHERE questions.ID_TEST=$ID_TEST AND
								questions.ID_QU=answers.ID_QU;");
				// Аналогичная ситуация с логами вопросов задания
				$this->query("DELETE FROM results_log USING results_log, questions
								WHERE questions.ID_TEST = $ID_TEST AND
								questions.ID_QU = results_log.ID_QU;");
				$this->query("DELETE FROM questions WHERE questions.ID_TEST=$ID_TEST;");
			}
			$this->query("DELETE FROM level_question WHERE level_question.ID_TEST=$ID_TEST");
			$this->query("DELETE FROM tests WHERE ID_TEST=$ID_TEST;");
			if(USE_TRANSACTION)
				$this->query("COMMIT;");
			else
				$this->unlock();			
			return true;
		}
		else
		{
			$this->LogOut();
			return false;
		}
	}
	function ClearTest($ID_TEST)
	{
		if($this->CanAdminTest($ID_TEST))
		{
			$this->GetInfoTest($ID_TEST);
			if(USE_TRANSACTION)
				$this->query("START TRANSACTION;");
			else			
				$this->lock(array("tests","tests_blocks","level_question","test_priv","time_table","results_log_answers", "results_log", "results","questions","answers"));
			$this->query("DELETE FROM results_log_answers USING results_log_answers, results_log, results
							WHERE results.ID_TEST=$ID_TEST AND 
								results.ID_RE=results_log.ID_RE AND
								results_log.ID_RE_LOG=results_log_answers.ID_RE_LOG;");
			$this->query("DELETE FROM results_log USING results_log, results
							WHERE results.ID_TEST=$ID_TEST AND 
								results.ID_RE=results_log.ID_RE;");
			$this->query("DELETE FROM results WHERE results.ID_TEST=$ID_TEST");			
			if($this->IsBlock=='Y')
			{
				//$this->query("DELETE FROM tests_blocks WHERE tests_blocks.ID_TEST_BLOCK=$ID_TEST");
			}
			else
			{
				//$this->query("DELETE FROM tests_blocks WHERE tests_blocks.ID_TEST=$ID_TEST");
				$this->query("DELETE FROM answers USING answers, questions 
							WHERE questions.ID_TEST=$ID_TEST AND
								questions.ID_QU=answers.ID_QU;");
				$this->query("DELETE FROM questions WHERE questions.ID_TEST=$ID_TEST;");
			}
			$this->query("DELETE FROM level_question WHERE level_question.ID_TEST=$ID_TEST");
			if(USE_TRANSACTION)
				$this->query("COMMIT;");
			else
				$this->unlock();			
			return true;
		}
		else
		{
			$this->LogOut();
			return false;
		}		
	}
	function GetInfoTest($ID_TEST)
	{			
		//if($ID_TEST!=0&&$ID_TEST==$this->ID_TEST)
			//return true;
		$this->query("SELECT * FROM tests WHERE ID_TEST = '$ID_TEST';");
		if($this->next_record())
		{
   			$this->ID_TEST = $ID_TEST;
			$this->TestName = $this->f("TestName");
			$this->IsBlock = $this->f("IsBlock");
			$this->TestTime = $this->f("TestTime");
			$this->DisableShowPrevTask = $this->f("DisableShowPrevTask");
			$this->IsTimeForOneQuestion = $this->f("IsTimeForOneQuestion");
			$this->ShowTask = $this->f("ShowTask");
			$this->TaskURL = $this->f("TaskURL");
			return true;
		}
	        $this->ID_TEST = 0;
		$this->TestName = "";
		$this->IsBlock = "";
		$this->TestTime = 0;
		$this->DisableShowPrevTask = "";
		$this->IsTimeForOneQuestion = "";
		$this->ShowTask = "";
		$this->TaskURL = "";
		return false;	
	}
	function GetID_TEST($TestName)
	{
		$TestName=$this->PrepareString($TestName);
		if(strlen($TestName)!=0)
		{
			$this->query("SELECT ID_TEST FROM tests WHERE TestName LIKE '$TestName';");
			if($this->next_record())
				return $this->f("ID_TEST");
		}
		return 0;
	}
}
?>