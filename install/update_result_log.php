<?php
	include "../inc/testsys.inc.php";
	$result_log = new CTestSys();
	/*$result_log->query("SELECT questions.ID_QU, level_question.Point,results_log.ID_RE_LOG, results_log.IsRight  
					FROM results_log, questions, level_question
					WHERE results_log.ID_QU=questions.ID_QU AND 
						  questions.ID_Level=level_question.Id_Level AND 
						  questions.ID_TEST=level_question.Id_TEST 
					ORDER BY questions.ID_Level, ID_QU;");*/
	$result_log->query("SELECT * FROM results_log;");

	$results_log_answers = new CTestSys();
	$update_results_log = new CTestSys();
	$count_true = 0;
	$count_false = 0;
	$update_results_log->query("START TRANSACTION;");
	while($result_log->next_record())
	{
		$results_log_answers->query("SELECT answers.A_True, results_log_answers.ID_AN AS ID_AN_Student
					FROM answers LEFT JOIN results_log_answers ON 
					(answers.ID_AN=results_log_answers.ID_AN AND results_log_answers.ID_RE_LOG=".$result_log->f("ID_RE_LOG").")
					WHERE answers.ID_QU=".$result_log->f("ID_QU"));
		$bIsTrue=true;
		while($results_log_answers->next_record())
		{			
			if(	($results_log_answers->f("A_True")==CORRECT)&&($results_log_answers->f("ID_AN_Student")==NULL) ||
				($results_log_answers->f("A_True")!=CORRECT)&&($results_log_answers->f("ID_AN_Student")!=NULL) )
			{
				$bIsTrue=false;
			}			
		}
		if($bIsTrue)
		{
			//echo "true <br />";
			++$count_true;			
			$update_results_log->query("UPDATE results_log SET IsRight ='Y' WHERE ID_RE_LOG=".$result_log->f("ID_RE_LOG"));
		}
		else
		{
			++$count_false;
			//echo "false <br />";
			$update_results_log->query("UPDATE results_log SET IsRight ='N' WHERE ID_RE_LOG=".$result_log->f("ID_RE_LOG"));
		}
	}
	$update_results_log->query("COMMIT;");
	echo "count_true = $count_true <br />\n";
	echo "count_false = $count_false <br />\n";	  
?>