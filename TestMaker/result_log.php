<?php
include "../inc/result.inc.php";
$res = new CResult();
$ID_RE = empty($_GET["ID_RE"])?(0):$_GET["ID_RE"];
$ID_RE = intval($ID_RE);
if (!$res->IsLogin()||!$res->CanViewResult($ID_RE))
{
	header("location:index.php");
}
else 
{
	
	$tpl = new Template(TESTMAKER_TPL_DIR,"keep");
	$tpl->set_file(array("common_popup"=>"common_popup.html","result_log"=>"result_log.html"));
	$tpl->set_block("result_log","row_question","ROWS_QUESTIONS");

	$tpl->set_block("row_question","row_answer_header","ROWS_ANSWERS_HEADER");
	$tpl->set_block("row_question","row_answer_header3","ROWS_ANSWERS_HEADER3");
	$tpl->set_block("row_question","row_answer_header4","ROWS_ANSWERS_HEADER4");
	$tpl->set_block("row_question","row_answer","ROWS_ANSWERS");
	$tpl->set_block("row_question","row_answer3","ROWS_ANSWERS3");
	$tpl->set_block("row_question","row_answer4","ROWS_ANSWERS4");
	
	$tpl->set_block("row_question","row_correct","CORRECT_INCORRECT");
	$tpl->set_block("row_question","row_incorrect","CORRECT_INCORRECT1");
	$tpl->set_var("CORRECT_INCORRECT1","");	
	$tpl->set_var("ROWS_ANSWERS_HEADER3","");
	$tpl->set_var("ROWS_ANSWERS_HEADER4","");
	$tpl->set_var("ROWS_ANSWERS3","");
	$tpl->set_var("ROWS_ANSWERS4","");
	$res->GetInfoResultEx($ID_RE);
	$tpl->set_var(array("StName"=>$res->StName,
						"GrName"=>$res->GrName,
						"TestName"=>$res->TestName,
						"Result"=>$res->Result
						));
	$res->query("	SELECT questions.*, level_question.Point,results_log.ID_RE_LOG, results_log.IsRight
					FROM results_log, questions, level_question
					WHERE results_log.ID_RE=$ID_RE AND results_log.ID_QU=questions.ID_QU AND 
						  questions.ID_Level=level_question.Id_Level AND 
						  questions.ID_TEST=level_question.Id_TEST 
					ORDER BY questions.ID_Level, ID_QU;");
	$num=1;
	$obj = new CTestSys();
	while ($res->next_record())
	{
		$tpl->set_var(array("ID_Level"=>$res->f("ID_Level"),
							"Point"=>$res->f("Point"),
							"Q_Body"=>$res->f("Q_Body"),
							"NUM"=>$num
						));
		++$num;
		$TrueAnswers45 = array();
		switch ($res->f("Q_Type"))
		{
			case Q_TYPE1:
			case Q_TYPE2:
			$tpl->parse("ROWS_ANSWERS_HEADER","row_answer_header");
			$obj->query("SELECT answers.*, results_log_answers.ID_AN AS ID_AN_Student
					FROM answers LEFT JOIN results_log_answers ON 
					(answers.ID_AN=results_log_answers.ID_AN AND results_log_answers.ID_RE_LOG=".$res->f("ID_RE_LOG").")
					WHERE answers.ID_QU=".$res->f("ID_QU"));			
			break;
			case Q_TYPE3:
			$tpl->parse("ROWS_ANSWERS_HEADER","row_answer_header3");
			$obj->query("SELECT answers.*, results_log_answers3.A_BodySV AS A_BodySV
						FROM answers, results_log_answers3
						WHERE
						results_log_answers3.ID_RE_LOG=".$res->f("ID_RE_LOG")." AND
						answers.ID_QU=".$res->f("ID_QU"));
			break;
			case Q_TYPE4:
			$tpl->parse("ROWS_ANSWERS_HEADER","row_answer_header4");
			
			$obj->query("	SELECT answers.A_Body
							FROM answers
							WHERE answers.ID_QU=".$res->f("ID_QU")."
							ORDER BY ID_AN");
			$i = 0;
			while ($obj->next_record())
			{
				$TrueAnswers45[$i] = $obj->f("A_Body");
				++$i;
			}
			
			$obj->query("	SELECT answers.*
							FROM answers,  results_log_answers45
							WHERE 	answers.ID_AN = results_log_answers45.ID_AN AND
									answers.ID_QU=".$res->f("ID_QU")." AND
									results_log_answers45.ID_RE_LOG=".$res->f("ID_RE_LOG")."
							ORDER BY results_log_answers45.ID_AN_SV");			
			break;
			case Q_TYPE5:
			$tpl->parse("ROWS_ANSWERS_HEADER","row_answer_header");
			$obj->query("	SELECT answers.ID_AN, answers.A_Body, answers2.A_SecondBody
							FROM answers, answers2
							WHERE
								answers.ID_AN = answers2.ID_AN AND
								answers.ID_QU=".$res->f("ID_QU"));//."
							//ORDER BY answers.ID_AN");
			while ($obj->next_record())
			{
				$TrueAnswers45[$obj->f("ID_AN")] = array(
						"A_Body" => $obj->f("A_Body"), 
						"A_SecondBody"=>$obj->f("A_SecondBody"));
			}
			$obj->query("	SELECT answers.*, results_log_answers45.ID_AN_SV
							FROM   answers
							LEFT JOIN results_log_answers45 ON
							(answers.ID_AN=results_log_answers45.ID_AN AND results_log_answers45.ID_RE_LOG=".$res->f("ID_RE_LOG").")
							WHERE answers.ID_QU=".$res->f("ID_QU")."
							ORDER BY answers.ID_AN");
			break;
		}

		$tpl->set_var("ROWS_ANSWERS","");
		$tpl->set_var("IsRight", $res->f("IsRight"));
		$bIsTrue = true;
		$i = 0;
		while ($obj->next_record())
		{
			switch ($res->f("Q_Type"))
			{
				case Q_TYPE1:
				case Q_TYPE2:
					$tpl->set_var(
						array(	"A_Body" => $obj->f("A_Body"),
								"REAL_V" => $obj->f("A_True") == CORRECT?"&clubs;":" ",
								"ST_V"   => $obj->f("ID_AN_Student")!=NULL?"&clubs;":" "
							));
					if(	($obj->f("A_True")==CORRECT)&&($obj->f("ID_AN_Student")==NULL) ||
						($obj->f("A_True")!=CORRECT)&&($obj->f("ID_AN_Student")!=NULL) )
					{
						$bIsTrue = false;
					}
					$tpl->parse("ROWS_ANSWERS","row_answer",true);
				break;
				case Q_TYPE3:
					$tpl->set_var(
						array(	"A_Body" => $obj->f("A_Body"),
								"ST_V"   => $obj->f("A_BodySV")));
					$tpl->parse("ROWS_ANSWERS","row_answer3",true);
					$bIsTrue &= ($obj->f("A_Body") == $obj->f("A_BodySV"));
				break;
				case Q_TYPE4:
					$tpl->set_var(
						array(	"A_Body" =>  $TrueAnswers45[$i],
								"ST_V"   =>  $obj->f("A_Body"),
							));
					$tpl->parse("ROWS_ANSWERS","row_answer4",true);
					$bIsTrue &= ($obj->f("A_Body") == $TrueAnswers45[$i]);
				break;
				case Q_TYPE5:
					$tpl->set_var(
						array(	"A_Body" =>  $TrueAnswers45[$obj->f("ID_AN")]["A_Body"],
								"REAL_V" =>  $TrueAnswers45[$obj->f("ID_AN")]["A_SecondBody"],
								"ST_V"   =>  $obj->f("ID_AN_SV") != null?$TrueAnswers45[$obj->f("ID_AN_SV")]["A_SecondBody"]:"",
							));
					$tpl->parse("ROWS_ANSWERS","row_answer",true);
					if ($obj->f("ID_AN_SV") != null)
					{
						$bIsTrue &= ($TrueAnswers45[$obj->f("ID_AN")]["A_SecondBody"] == $TrueAnswers45[$obj->f("ID_AN_SV")]["A_SecondBody"]);
					}
					else
					{
						$bIsTrue = false;
					}
				break;
			}
			++$i;
		}

		if ($bIsTrue)
		{
			$tpl->parse("CORRECT_INCORRECT","row_correct");
		}
		else
		{
			$tpl->parse("CORRECT_INCORRECT","row_incorrect");
		}
		$tpl->parse("ROWS_QUESTIONS","row_question",true);
	}

	$tpl->parse("CONTENT_POPUP","result_log");
	$tpl->parse("OUT","common_popup");
	$tpl->p("OUT");
	
	/*
	SELECT 	results_log.ID_RE, results_log.ID_QU, 
			answers.A_True, answers.A_Body, results_log_answers.ID_AN 
			FROM results_log, questions, answers left join results_log_answers on (answers.ID_AN=results_log_answers.ID_AN)
			WHERE results_log.ID_QU=questions.ID_QU AND results_log.ID_QU=answers.ID_QU;
	*/
}
?>