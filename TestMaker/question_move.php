<?php
include ("../inc/testmaker.inc.php");
$obj=new CTestMaker();
if(!$obj->IsLogin())
{
	header("Location:login.php");	
}
else
{
	$id_test_right=empty($_GET["id_test_right"])?(0):($_GET["id_test_right"]);
	$id_test_left=empty($_GET["id_test_left"])?(0):($_GET["id_test_left"]);
	$id_test_right=intval($id_test_right);
	$id_test_left=intval($id_test_left);
	if($id_test_right==$id_test_left)
	{
		$id_test_right=0;
	}
	if(($id_test_right!=0&&!$obj->CanAdminTest($id_test_right)) || ($id_test_left!=0&&!$obj->CanAdminTest($id_test_left)))
	{
		$obj->LogOut();
		header("location:login.php");		
	}
	else
	{
		$tpl = new Template(TESTMAKER_TPL_DIR,"keep");
		$tpl->set_file(array("common_popup"=>"common_popup.html","question_move"=>"question_move.html"));
		$tpl->set_block("question_move","test_row_left","TESTS_ROWS_LEFT");
		$tpl->set_block("question_move","test_row_right","TESTS_ROWS_RIGHT");	
		$tpl->set_var(array("ID_TEST_RIGHT_PREV_VALUE"=>$id_test_right,"ID_TEST_LEFT_PREV_VALUE"=>$id_test_left));
		if($obj->IsTestAdmin())
		{
			$sql="SELECT * FROM tests WHERE tests.IsBlock='N' ORDER BY TestName;";		
		}
		else
		{
			$sql=sprintf(	"SELECT tests.* FROM tests, test_priv 
							WHERE tests.IsBlock='N' AND test_priv.ID_TE=%d AND (test_priv.CanChange='Y' OR test_priv.CanAdmin='Y') AND tests.ID_TEST=test_priv.ID_TEST 
							ORDER BY TestName;",
							$obj->GetID_TE());
		}
		$obj->query($sql);
		while($obj->next_record())
		{		
			if($obj->f("ID_TEST")==$id_test_left)
			{
				$tpl->set_var("SELECTED_LEFT","selected");
			}
			else
			{
				$tpl->set_var("SELECTED_LEFT","");
			}
			$tpl->set_var(array(
								"ID_TEST_LEFT"=>$obj->f("ID_TEST"),
								"TestName_LEFT"=>$obj->f("TestName")
								));
			if($obj->f("ID_TEST")==$id_test_right)
			{
				$tpl->set_var("SELECTED_RIGHT","selected");
			}
			else
			{
				$tpl->set_var("SELECTED_RIGHT","");
			}
			$tpl->set_var(array(
								"ID_TEST_RIGHT"=>$obj->f("ID_TEST"),
								"TestName_RIGHT"=>$obj->f("TestName")
								));
			$tpl->parse("TESTS_ROWS_LEFT","test_row_left",true);
			$tpl->parse("TESTS_ROWS_RIGHT","test_row_right",true);	
		}
		$obj->query("SELECT * FROM questions WHERE id_test=$id_test_left ORDER BY ID_Level;");
		$tpl->set_block("question_move","question_row_left","QUESTIONS_ROWS_LEFT");
		$tpl->set_var("QUESTIONS_ROWS_LEFT","");
		$tpl->set_block("question_row_left","row_answer","ROWS_ANSWERS");
		$tmp_obj= new CTestMaker();
		while($obj->next_record())
		{
			$tpl->set_var(
					array(
						"ID_QU"=>$obj->f("ID_QU"),
						"ID_Level"=>$obj->f("ID_Level"),
						"Q_Body"=>$obj->f("Q_Body")
						));
			$tpl->set_var("ROWS_ANSWERS","");
			$tmp_obj->query("SELECT * FROM answers WHERE ID_QU=".$obj->f("ID_QU"));
			while($tmp_obj->next_record())
			{
				$tpl->set_var(
					array(
						"A_True"=>$tmp_obj->f("A_True")==CORRECT?"&clubs;":" ",
						"A_Body"=>$tmp_obj->f("A_Body")
						));
				$tpl->parse("ROWS_ANSWERS","row_answer",true);
			}
			$tpl->parse("QUESTIONS_ROWS_LEFT","question_row_left",true);
		}
		$tpl->parse("CONTENT_POPUP","question_move");
		$tpl->parse("OUT","common_popup");
		$tpl->p("OUT");	
	}
}
?>