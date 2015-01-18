<?php 
include ("../inc/level_question.inc.php");
$ID_TEST=empty($_GET["ID_TEST"])?(0):($_GET["ID_TEST"]);
$ID_TEST=intval($ID_TEST);
$obj=new CLevelQuestion();
if(!$obj->CanUseTest($ID_TEST)) 
{
	$obj->LogOut();
	header("location:index.php");
}
else if(!$obj->GetInfoLevelQuestion($ID_TEST))
{	
	header("location:index.php");
}
else if($obj->IsBlock=='Y')
{
	header("location:tests.php?IsBlock=N");
}
else
{	
	$IsLevelePresent = false;
	for($k=1;$k<=LEVEL_MAX;++$k)	
	{		
		if($obj->IsInTable[$k])
		{
			$IsLevelePresent=true;
			break;
		}
	}
	if(!$IsLevelePresent)
	{
		header("location:level_question.php?ID_TEST=$ID_TEST");
	}
	else
	{	
		$obj->PreparePageMenu();
		$obj->tpl->set_file("questions", "questions.html");
		$obj->tpl->set_block("questions","question_row","QUESTIONS_ROWS");
		$obj->tpl->set_block("questions","lelel_info_row","LELELS_INFO_ROWS");
		$obj->tpl->set_block("questions","add_new_question","ADD_NEW_QUESTION");
		$obj->tpl->set_block("question_row","answer_row","ANSWERS_ROWS");
		$obj->tpl->set_block("question_row","can_change","CAN_CHANGE");		
		$obj->tpl->set_block("question_row","can_not_change","CAN_NOT_CHANGE");
		for($k=1;$k<=LEVEL_MAX;++$k)	
		{		
			if($obj->IsInTable[$k])
			{
				$obj->tpl->set_var(array("QTYINTEST"=>$obj->QTYInTest[$k],"LEVEL"=>$k,"NUMBER2"=>2*$obj->Number[$k]));
				$obj->tpl->parse("LELELS_INFO_ROWS","lelel_info_row",true);
			}
		}
		
		$obj->query("SELECT TestName FROM tests WHERE ID_TEST=$ID_TEST;");
		$obj->next_record();
		$obj->tpl->set_var("TestName",$obj->f("TestName"));
		if($obj->CanChangeTest($ID_TEST))	
		{
			$obj->tpl->parse("ADD_NEW_QUESTION","add_new_question");
			$obj->tpl->parse("CAN_CHANGE","can_change");
			$obj->tpl->set_var("CAN_NOT_CHANGE","");
		}
		else
		{
			$obj->tpl->set_var("ADD_NEW_QUESTION","");
			$obj->tpl->parse("CAN_NOT_CHANGE","can_not_change");
			$obj->tpl->set_var("CAN_CHANGE","");
		}
		$obj->query("SELECT * FROM questions WHERE ID_TEST=$ID_TEST ORDER BY ID_Level;");
		$obj->tpl->set_var("QUESTIONS_ROWS","");
		$obj->tpl->set_var("ANSWERS_ROWS","");
		$i=0;
		$tmp_obj= new CTestMaker();
		while($obj->next_record())
		{
			++$i;
			$obj->tpl->set_var(array("NUM"=>$i,
								"ID_Level"=>$obj->f("ID_Level"),
								"ID_QU"=>$obj->f("ID_QU"),
								"Q_BODY"=>$obj->f("Q_Body")	
							));
			$obj->tpl->set_var("ANSWERS_ROWS","");
			$tmp_obj->query("SELECT * FROM answers WHERE ID_QU=".$obj->f("ID_QU"));
			while($tmp_obj->next_record())
			{
				$obj->tpl->set_var(
					array(
						"A_True"=>$tmp_obj->f("A_True")==CORRECT?"&clubs;":" ",
						"A_Body"=>$tmp_obj->f("A_Body")
						));
				$obj->tpl->parse("ANSWERS_ROWS","answer_row",true);
			}		
			$obj->tpl->parse("QUESTIONS_ROWS","question_row",true);
		}	
		$obj->tpl->set_var("ID_TEST",$ID_TEST);
		$obj->tpl->parse("CONTENT","questions");
		$obj->tpl->parse("OUT","common");
		$obj->tpl->p("OUT");
	}
}
?>