<?php
include "../inc/testmaker.inc.php";
$obj = new CTestMaker();
if(!$obj->IsLogin()||empty($_GET["IsBlock"])||!$obj->IsYN($_GET["IsBlock"]))
{
	header("location:index.php");
}
else
{	
	$IsBlock=$_GET["IsBlock"];
	$obj->PreparePageMenu();
	if($IsBlock=="N")
		$obj->tpl->set_file("tests","tests.html");
	else 
		$obj->tpl->set_file("tests","tests_blocks.html");
	$obj->tpl->set_block("tests","add_new_test","ADD_NEW_TEST");
	if($obj->IsTestCreator())
	{
		$obj->tpl->parse("ADD_NEW_TEST","add_new_test");
	}
	else
	{
		$obj->tpl->set_var("ADD_NEW_TEST","");
	}
	$obj->tpl->set_block("tests","test_row","TESTS_ROWS");
	
	$obj->tpl->set_block("test_row","can_admin_row","CAN_ADMIN_ROWS");	
	$obj->tpl->set_block("test_row","can_use_row","CAN_USE_ROWS");
	$obj->tpl->set_var(array("CAN_ADMIN_ROWS"=>"","CAN_USE_ROWS"=>""));		
	$obj->tpl->set_var("IsBlock",$IsBlock);
	if($obj->IsTestAdmin())
		$sql=sprintf("SELECT tests.*, 'Y' AS 'CanAdmin', 'Y' AS 'CanChange' FROM tests WHERE tests.IsBlock='%s' ORDER BY TestName;",$IsBlock);
	else
		$sql=sprintf("SELECT tests.*, test_priv.CanAdmin, test_priv.CanChange FROM tests,teachers,test_priv WHERE (tests.IsBlock='%s' AND tests.ID_TEST=test_priv.ID_TEST AND test_priv.ID_TE=teachers.ID_TE AND teachers.ID_TE=%d) ORDER BY TestName;",
								$IsBlock,$obj->GetID_TE());	
	$obj->query($sql);
	$obj->tpl->set_var("TESTS_ROWS","");
	$num=0;
	while($obj->next_record())
	{
		$obj->tpl->set_var(array(
							"NUM"=>++$num,
							"TestName"=>$obj->f("TestName"),
							"TestTime"=>$obj->f("TestTime"),
							"IsTimeForOneQuestion"=>$obj->f("IsTimeForOneQuestion"),
							"ID_TEST"=>$obj->f("ID_TEST")
						));
		if($obj->f("CanAdmin")=='Y')
		{
			$obj->tpl->parse("CAN_ADMIN_ROWS","can_admin_row");
		}
		else
		{
			$obj->tpl->parse("CAN_ADMIN_ROWS","can_use_row");
		}
		$obj->tpl->parse("TESTS_ROWS","test_row",true);
	}	
	$obj->tpl->parse("CONTENT","tests");
	$obj->tpl->parse("OUT","common");
	$obj->tpl->p("OUT");
}
?>