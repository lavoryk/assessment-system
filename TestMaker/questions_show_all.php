<?php
include ("../inc/level_question.inc.php");
$obj=new CLevelQuestion();
if(!$obj->IsLogin())
{
	header("Location:login.php");	
}
else
{
	$id_test=empty($_GET["id_test"])?(0):($_GET["id_test"]);	
	$id_test=intval($id_test);	
	if(!$obj->CanUseTest($id_test))
	{
		$obj->LogOut();
		header("location:login.php");		
	}
	else
	{
		$tpl = new Template(TESTMAKER_TPL_DIR,"keep");
		$tpl->set_file(array("common_popup"=>"common_popup.html","questions_show_all"=>"questions_show_all.html"));
		$tpl->set_block("questions_show_all","lelel_info_row","LELELS_INFO_ROWS");
		$tpl->set_block("questions_show_all","question_row_left","QUESTIONS_ROWS_LEFT");
		$tpl->set_block("question_row_left","row_answer","ROWS_ANSWERS");
		$tpl->set_var("QUESTIONS_ROWS_LEFT","");		
		
		$obj->GetInfoLevelQuestion($id_test);
		
		foreach ($obj->QTYInTest as $k => $v)
		{
			$tpl->set_var(array("QTYINTEST"=>$v,"LEVEL"=>$k,"NUMBER2"=>2*$obj->Number[$k]));
			$tpl->parse("LELELS_INFO_ROWS","lelel_info_row",true);
		}
		
		$obj->query("SELECT TestName FROM tests WHERE ID_TEST=$id_test;");
		$obj->next_record();
		$tpl->set_var("TestName",$obj->f("TestName"));
		$obj->query("SELECT * FROM questions WHERE id_test=$id_test ORDER BY ID_Level;");		
		$tmp_obj= new CTestMaker();
		while($obj->next_record())
		{
			$tpl->set_var(
					array(
						"ID_QU"=>$obj->f("ID_QU"),
						"ID_Level"=>$obj->f("ID_Level"),
						"Q_Body"=>$obj->f("Q_Body")
						));
			/* Test QUERY
			SELECT count(*) AS qty, 'N' FROM results_log WHERE IsRight='N'			
			UNION
			SELECT count(*) AS qty, 'Y' FROM results_log WHERE IsRight='Y'
			UNION
			SELECT count(*) AS qty, 'ALL' FROM results_log;
			*/
			$tpl->set_var("QTY_FALSE_ALL",$obj->f("qty_false"));
			$tpl->set_var("QTY_TRUE_ALL",$obj->f("qty_true"));
			
			$tmp_obj->query("SELECT count(*) AS qty FROM results_log WHERE ID_QU=".$obj->f("ID_QU")." AND IsRight='N';");
			$tmp_obj->next_record();
			$tpl->set_var("QTY_FALSE_LOG",$tmp_obj->f("qty"));
			$tmp_obj->query("SELECT count(*) AS qty FROM results_log WHERE ID_QU=".$obj->f("ID_QU")." AND IsRight='Y';");
			$tmp_obj->next_record();
			$tpl->set_var("QTY_TRUE_LOG",$tmp_obj->f("qty"));			
			
			$tpl->set_var("ROWS_ANSWERS","");			
			$tmp_obj->query("SELECT * FROM answers WHERE ID_QU=".$obj->f("ID_QU"));
			while($tmp_obj->next_record())
			{
				$tpl->set_var(
					array(
						"A_True"=>$tmp_obj->f("A_True")==CORRECT?"&bull;":" ",
						"A_Body"=>$tmp_obj->f("A_Body")
						));
				$tpl->parse("ROWS_ANSWERS","row_answer",true);
			}
			$tpl->parse("QUESTIONS_ROWS_LEFT","question_row_left",true);
		}
		$tpl->parse("CONTENT_POPUP","questions_show_all");
		$tpl->parse("OUT","common_popup");
		$tpl->p("OUT");
	}
}
?>