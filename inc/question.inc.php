<?php 
include_once "testmaker.inc.php";
class CQuestion extends CTestMaker
{
	var $ID_QU=0;
	var $ID_TEST=0;
	var $ID_Level=0;
	var $Q_Type=0;
	var $Q_Body="";
	var $Answers=array();
  /*
  	=array(	0=>array("ID_AN"=>... ,
  					 "A_True"=>... ,
  					 "A_Body"=>	
  					 "A_SecondBody"=>
  					),
  			1=>array("ID_AN"=>... ,
  					 "A_True"=>... ,
  					 "A_Body"=>	
  					 "A_SecondBody"=>
  					),
  			2=>array("ID_AN"=>... ,
  					 "A_True"=>... ,
  					 "A_Body"=>	
  					 "A_SecondBody"=>
  					),
  			3=>array("ID_AN"=>... ,
  					 "A_True"=>... ,
  					 "A_Body"=>	
  					 "A_SecondBody"=>
  					),
  			4=>array("ID_AN"=>... ,
  					 "A_True"=>... ,
  					 "A_Body"=>
  					 "A_SecondBody"=>
  					) 
  			);
	*/
	var $str_set="0";	//Need only for ChangeQuestion
						//See also MakeAnswers;
	function AddQuestion($ID_TEST, $Q_Type, $ID_Level, $Q_Body, $ID_AN, $A_True, $A_Body, $A_SecondBody)
	{		
		if(!$this->CanChangeTest($ID_TEST)||($Q_Type < Q_TYPE1 || $Q_Type > Q_TYPE_MAX))
		{
			$this->LogOut();
			return false;
		}
		$Answers = $this->MakeAnswers($ID_AN, $A_True, $A_Body, $Q_Type, $A_SecondBody);
		$Q_Body = $this->PrepareString($Q_Body);
		if(!is_array($Answers)||empty($Answers)||strlen($Q_Body)==0)
		{
			return false;
		}
		//Круті перевірки як завжди пізніше
		if(USE_TRANSACTION)
			$this->query("START TRANSACTION;");
		else
			$this->lock(array("questions","answers", "answers2"));
		$sql=sprintf("INSERT INTO questions (ID_TEST,Q_Type,ID_Level,Q_Body) VALUES (%d,%d,%d,'%s');",
					$ID_TEST,$Q_Type,$ID_Level,$Q_Body);
		$this->query($sql);
		$this->query("SELECT MAX(ID_QU) AS MAX_ID_QU FROM questions;");
		$this->next_record();			
		$ID_QU=$this->f("MAX_ID_QU");
		foreach ($Answers as $v)
		{
			$sql=sprintf("INSERT INTO answers (ID_QU,A_True,A_Body) VALUES (%d,%d,'%s');",
						$ID_QU,
						$v["A_True"],
						$v["A_Body"]);
			$this->query($sql);
			if ($Q_Type == Q_TYPE4 || $Q_Type == Q_TYPE5)
			{
			    $this->query("SELECT MAX(ID_AN) AS MAX_ID_AN FROM answers;");
			    $this->next_record();
			    $ID_AN = $this->f("MAX_ID_AN");
			    
			    $sql = sprintf("INSERT INTO answers2 (ID_AN,A_SecondBody) VALUES (%d, '%s');",
        			    $ID_AN,
        			    $v["A_SecondBody"]);
			    $this->query($sql);
			}
		}
		if(USE_TRANSACTION)
			$this->query("COMMIT;");
		else
			$this->unlock();
		return true;		
	}
	function ChangeQuestion($ID_QU, $Q_Type, $ID_Level, $Q_Body, $ID_AN, $A_True, $A_Body, $A_SecondBody)
	{
		if(!$this->CanChangeQuestion($ID_QU)||($Q_Type < Q_TYPE1 || $Q_Type > Q_TYPE_MAX))
		{
			$this->LogOut();
			return false;
		}
		$Answers = $this->MakeAnswers( $ID_AN, $A_True, $A_Body, $Q_Type, $A_SecondBody);
		$Q_Body=$this->PrepareString($Q_Body);
		if(!is_array($Answers)||empty($Answers)||strlen($Q_Body)==0)
		{
			return false;
		}
		//Круті перевірки як завжди пізніше		
		if(USE_TRANSACTION)
		{
			$this->query("START TRANSACTION;");
		}
		else
		{
			$this->lock(
				array(
					"questions",
					"answers",
					"answers2",
					"results_log",
					"results_log_answers",
					"results_log_answers3"));
		}
		$sql=sprintf("UPDATE questions SET ID_Level=%d,Q_Body='%s' WHERE ID_QU=%d;",
					$ID_Level,$Q_Body,$ID_QU);
		$this->query($sql);
		$sql = sprintf("DELETE FROM results_log_answers USING results_log_answers,results_log
						WHERE results_log.ID_QU = %d AND
						results_log_answers.ID_RE_LOG=results_log.ID_RE_LOG
						AND results_log_answers.ID_AN NOT IN(%s);",
						$ID_QU, $this->str_set
					);
		$this->query($sql);
		/*
		$sql = sprintf("DELETE FROM results_log_answers3 USING results_log_answers3, results_log
						WHERE results_log.ID_QU = %d AND
						results_log_answers3.ID_RE_LOG=results_log.ID_RE_LOG
						AND results_log_answers3.ID_AN NOT IN(%s);",
						$ID_QU, $this->str_set
					);
		$this->query($sql);
		*/
		$sql = sprintf("DELETE FROM results_log_answers45 USING results_log_answers45, results_log
						WHERE results_log.ID_QU = %d AND
						results_log_answers45.ID_RE_LOG=results_log.ID_RE_LOG
						AND results_log_answers45.ID_AN NOT IN(%s);",
						$ID_QU, $this->str_set
					);
		$this->query($sql);
		if ($Q_Type == Q_TYPE4 || $Q_Type == Q_TYPE5)
        {
    		$sql=sprintf("	DELETE FROM answers2 USING answers2, answers
    						WHERE answers.ID_QU = %d AND answers2.ID_AN=answers.ID_AN AND answers.ID_AN NOT IN(%s);",
                            $ID_QU,
    						$this->str_set);
    		$this->query($sql);
        }
		$sql=sprintf("DELETE FROM answers WHERE ID_QU = %d AND answers.ID_AN NOT IN(%s);",
						$ID_QU, $this->str_set);
		$this->query($sql);
		foreach ($Answers as $v)
		{
			if($v["ID_AN"] > 0)
			{
				//А тут виправити на update
				/*$sql=sprintf("INSERT INTO answers (ID_AN,ID_QU,A_True,A_Body) VALUES (%d,%d,%d,'%s');",
						$v["ID_AN"],
						$ID_QU,
						$v["A_True"],
						$v["A_Body"]);*/
				$sql=sprintf("UPDATE answers SET A_True=%d, A_Body='%s' WHERE ID_AN=%d;",
						$v["A_True"],
						$v["A_Body"],
						$v["ID_AN"]);
                $this->query($sql);
                if ($Q_Type == Q_TYPE4 || $Q_Type == Q_TYPE5)
    			{
    			    $sql = sprintf("UPDATE answers2 SET A_SecondBody = '%s' WHERE ID_AN = %d;",            			    
            			    $v["A_SecondBody"],
            			    $v["ID_AN"]);
    			    $this->query($sql);
    			}
			}
			else
			{
				$sql=sprintf("INSERT INTO answers (ID_QU,A_True,A_Body) VALUES (%d,%d,'%s');",
						$ID_QU,
						$v["A_True"],
						$v["A_Body"]);
				$this->query($sql);
                if ($Q_Type == Q_TYPE4 || $Q_Type == Q_TYPE5)
    			{
    			    $this->query("SELECT MAX(ID_AN) AS MAX_ID_AN FROM answers;");
    			    $this->next_record();
    			    $ID_AN = $this->f("MAX_ID_AN");
    			    
    			    $sql = sprintf("INSERT INTO answers2 (ID_AN,A_SecondBody) VALUES (%d, '%s');",
            			    $ID_AN,
            			    $v["A_SecondBody"]);
    			    $this->query($sql);
    			}
			}
			
		}
		if(USE_TRANSACTION)
			$this->query("COMMIT;");
		else
			$this->unlock();
		return true;
	}
	function MakeAnswers($ID_AN, $A_True, $A_Body, $Q_Type, $A_SecondBody)
	{
		if(!is_array($ID_AN)||!is_array($A_True)||!is_array($A_Body))
		{
			return null;
		}
		$Answers=array();
		$this->str_set="";
		for ($i=0,$j=0; $i < ANSWER_COUNT_MAX; $i++)
		{
			if (!isset($A_Body[$i]))
			{
				continue;
			}
			@$A_Body[$i]=$this->PrepareString($A_Body[$i]);
			@$ID_AN[$i]=intval($ID_AN[$i]);			
			if(strlen($A_Body[$i])==0)
			{
				continue;
			}
			@$A_SecondBody[$i] = $this->PrepareString($A_SecondBody[$i]);
			$Answers[$j]=array(	"ID_AN"=>$ID_AN[$i],
  						"A_True"=>empty($A_True[$i])?(INCORRECT):(CORRECT),
  				 		"A_Body"=>$A_Body[$i],
  				 		"A_SecondBody"=>$A_SecondBody[$i]
  				 		);  		    
  			++$j;
  			if($ID_AN[$i]>0)
  				$this->str_set.=$ID_AN[$i]." ";
		}
		if ($Q_Type==Q_TYPE1 || $Q_Type==Q_TYPE3)
		{
			$Answers[0]["A_True"]=CORRECT;
		}
		$this->str_set=rtrim($this->str_set);
		$this->str_set=str_replace(" ",",",$this->str_set);
		return $Answers;
	}
	function DeleteQuestion($ID_QU)
	{	
		if($this->CanChangeQuestion($ID_QU))
		{			
			if(USE_TRANSACTION)
			{
				$this->query("START TRANSACTION;");
			}
			else
			{
				$this->lock(
					array(
						"questions",
						"answers",
						"answers2",
						"results_log",
						"results_log_answers",
						"results_log_answers3",
						"results_log_answers45"));
			}
			$this->query("DELETE FROM results_log_answers USING results_log, results_log_answers
						WHERE results_log.ID_QU=$ID_QU AND
						results_log.ID_RE_LOG=results_log_answers.ID_RE_LOG;");

			$this->query("DELETE FROM results_log_answers3 USING results_log, results_log_answers3
						WHERE results_log.ID_QU=$ID_QU AND
						results_log.ID_RE_LOG=results_log_answers3.ID_RE_LOG;");

			$this->query("DELETE FROM results_log_answers45 USING results_log, results_log_answers45
						WHERE results_log.ID_QU=$ID_QU AND
						results_log.ID_RE_LOG=results_log_answers45.ID_RE_LOG;");
			$this->query("DELETE FROM results_log WHERE results_log.ID_QU=$ID_QU;");
			$this->query("DELETE FROM answers2 USING answers, answers2 WHERE answers.ID_AN = answers2.ID_AN AND answers.ID_QU=$ID_QU;");
			$this->query("DELETE FROM answers WHERE answers.ID_QU=$ID_QU;");
			$this->query("DELETE FROM questions WHERE questions.ID_QU=$ID_QU;");
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
	function GetInfoQuestion($ID_QU)
	{  	  	
		$sql = sprintf("SELECT * FROM questions where ID_QU = %d FOR UPDATE;", $ID_QU);
		$this->query($sql);
		if($this->next_record())
		{
			$this->ID_QU = $ID_QU;
			$this->ID_TEST=$this->f("ID_TEST");
			$this->ID_Level=$this->f("ID_Level");
			$this->Q_Type=$this->f("Q_Type");
			$this->Q_Body=$this->f("Q_Body");
		}
		else 
		{
			$this->ID_QU = 0;
			$this->ID_TEST=0;
			$this->ID_Level=0;
			$this->Q_Type=0;
			$this->Q_Body="";
			$this->Answers=array();
			return false;
		}
		if ($this->Q_Type==Q_TYPE1)
		{
			$sql = sprintf("SELECT * FROM answers WHERE ID_QU = %d ORDER BY A_True FOR UPDATE;", $ID_QU);
		}
		if ($this->Q_Type==Q_TYPE4 ||$this->Q_Type==Q_TYPE5)
		{
            $sql = sprintf("SELECT * FROM answers, answers2 WHERE answers.ID_QU = %d AND answers.ID_AN = answers2.ID_AN ORDER BY A_True FOR UPDATE;", $ID_QU);
		}
		else
		{
			$sql = sprintf("SELECT * FROM answers WHERE ID_QU = %d ORDER BY ID_AN FOR UPDATE;", $ID_QU);
		}
		$this->query($sql);
		$count = 0;
		while ($this->next_record())
		{			
				$this->Answers[$count]=array("ID_AN"=>$this->f("ID_AN"),
  					 					 "A_True"=>$this->f("A_True"),//CORRECT  INCORRECT
  					 					 "A_Body"=>$this->f("A_Body"),
  					 					 "A_SecondBody"=>$this->f("A_SecondBody"));
		    	$count++;
		}
		return true;
	}	
	function CanUseQuestion($ID_QU)
	{
		$this->query("SELECT ID_TEST FROM questions WHERE ID_QU='$ID_QU';");
		if($this->next_record())
		{
			return $this->CanUseTest($this->f("ID_TEST"));
		}		
		return false;
	}
	function CanChangeQuestion($ID_QU)
	{
		$this->query("SELECT ID_TEST FROM questions WHERE ID_QU='$ID_QU';");
		if($this->next_record())
		{
			return $this->CanChangeTest($this->f("ID_TEST"));
		}		
		return false;
	}
	function MoveQuestion($ID_QU,$ID_TEST_SOURCE,$ID_TEST_DESTINATION)
	{	
		if(!$this->CanChangeTest($ID_TEST_SOURCE)||!$this->CanChangeTest($ID_TEST_DESTINATION))
		{
			$this->LogOut();
		}
		else// if($ID_TEST_SOURCE>0&&$ID_TEST_DESTINATION>0)
 		{
 			$this->query("UPDATE questions SET ID_TEST=$ID_TEST_DESTINATION WHERE ID_QU=$ID_QU AND ID_TEST=$ID_TEST_SOURCE;");
 		}	
	}
	function CopyQuestion($ID_QU,$ID_TEST_SOURCE,$ID_TEST_DESTINATION)
	{
		if(!$this->CanChangeTest($ID_TEST_SOURCE)||!$this->CanChangeTest($ID_TEST_DESTINATION))
		{
			$this->LogOut();
		}
		else
		{
			if (USE_TRANSACTION)
				$this->query("START TRANSACTION;");
			else
				$this->lock(array("questions", "answers", "answers2"));
			if ($this->GetInfoQuestion($ID_QU))
			{				
				$sql=sprintf("INSERT INTO questions (ID_TEST,Q_Type,ID_Level,Q_Body) VALUES (%d,%d,%d,'%s');",
							$ID_TEST_DESTINATION,
							$this->Q_Type,
							$this->ID_Level,
							$this->PrepareString($this->Q_Body));
				$this->query($sql);
				$this->query("SELECT MAX(ID_QU) AS MAX_ID_QU FROM questions;");
				$this->next_record();			
				$ID_QU=$this->f("MAX_ID_QU");
				foreach ($this->Answers as $v)
				{
					$sql=sprintf("INSERT INTO answers (ID_QU,A_True,A_Body) VALUES (%d,%d,'%s');",
						$ID_QU,
						$v["A_True"],
						$this->PrepareString($v["A_Body"]));					
					$this->query($sql);
					if ($this->Q_Type == Q_TYPE4 ||$this->Q_Type == Q_TYPE5)
					{
					    $this->query("SELECT MAX(ID_AN) AS MAX_ID_AN FROM answers;");
				        $this->next_record();			
				        $ID_A=$this->f("MAX_ID_AN");
    					$sql=sprintf("INSERT INTO answers2 (ID_AN,A_SecondBody) VALUES (%d, '%s');",
    						$ID_A,
    						$this->PrepareString($v["A_SecondBody"]));
    					$this->query($sql);
					}
				}
			}
			if(USE_TRANSACTION)
				$this->query("COMMIT;");
			else
				$this->unlock();
		}	
	}
}//CQuestions
?>