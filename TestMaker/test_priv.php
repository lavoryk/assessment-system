<?php
include "../inc/testmaker.inc.php";
$obj=new CTestMaker();
$id_test=empty($_GET["id_test"])?(0):($_GET["id_test"]);
$id_test=intval($id_test);	
if(!$obj->IsLogin()||($id_test!=0&&!$obj->CanAdminTest($id_test)))
{
	$obj->LogOut();
	header("location:index.php");
}
else
{	
	$id_te=empty($_GET["id_te"])?(0):($_GET["id_te"]);
	$id_te=intval($id_te);	
	$tpl = new Template(TESTMAKER_TPL_DIR,"keep");
	$tpl->set_file(array("common_popup"=>"common_popup.html","test_priv"=>"test_priv.html"));
	$tpl->set_block("test_priv","row_test","ROWS_TESTS");
	$tpl->set_var("ROWS_TESTS","");
	$tpl->set_var("ID_TEST_CURRENT",$id_test);
	if($obj->IsTestAdmin())
		$sql="SELECT ID_TEST,TestName FROM tests ORDER BY IsBlock,TestName;";
	else
		$sql=sprintf("SELECT tests.ID_TEST,TestName FROM tests,test_priv WHERE test_priv.ID_TE=%d AND test_priv.CanAdmin='Y' AND tests.ID_TEST=test_priv.ID_TEST ORDER BY IsBlock,TestName;",
					$obj->GetID_TE());
	$obj->query($sql);	
	while($obj->next_record())
	{
		$tpl->set_var(array(
						"ID_TEST"=>$obj->f("ID_TEST"),
						"TestName"=>$obj->f("TestName")
					));
		if($id_test==$obj->f("ID_TEST"))
			$tpl->set_var("SELECTED_TEST","selected");
		else
			$tpl->set_var("SELECTED_TEST","");
		$tpl->parse("ROWS_TESTS","row_test",true);				
	}
	
	$tpl->set_block("test_priv","row_test_priv","ROWS_TEST_PRIV");
	$tpl->set_var("ROWS_TEST_PRIV","");
	$tpl->set_block("test_priv","row_test_priv_add_edit","ROW_TEST_PRIV_ADD_EDIT");
	$tpl->set_var("ROW_TEST_PRIV_ADD_EDIT","");
	$tpl->set_block("row_test_priv_add_edit","row_teacher","ROWS_TEACHERS");
	$obj->query("SELECT test_priv.*, teachers.ID_TE, teachers.TEName FROM test_priv,teachers WHERE test_priv.ID_TEST=$id_test AND teachers.ID_TE=test_priv.ID_TE ORDER BY teachers.TEName;");
	$num=0;
	while($obj->next_record())
	{
		++$num;		
		if($id_te==$obj->f("ID_TE"))
		{
			$tpl->set_var(array(
						"NUM"=>$num,
						"CANCHANGE_CHECKED"=>$obj->f("CanChange")=='Y'?"checked":"",
						"CANADMIN_CHECKED"=>$obj->f("CanAdmin")=='Y'?"checked":""
					));
			$tpl->parse("ROWS_TEST_PRIV","row_test_priv_add_edit",true);
		}
		else
		{
			$tpl->set_var(array(
						"NUM"=>$num,
						"TENAME"=>$obj->f("TEName"),						
						"CANCHANGE"=>$obj->f("CanChange"),
						"CANADMIN"=>$obj->f("CanAdmin"),
						"ID_TE"=>$obj->f("ID_TE")
					));
			$tpl->parse("ROWS_TEST_PRIV","row_test_priv",true);
		}
	}
	if($id_te==-1)
	{
		++$num;
		$tpl->set_var(array(
						"NUM"=>$num,
						"CANCHANGE_CHECKED"=>"",
						"CANADMIN_CHECKED"=>""												
					));
		$tpl->parse("ROWS_TEST_PRIV","row_test_priv_add_edit",true);
	}
	if($id_te!=0)
	{
		$sql=sprintf("SELECT teachers.ID_TE, TEName 
					FROM teachers LEFT JOIN test_priv ON (teachers.ID_TE=test_priv.ID_TE AND test_priv.ID_TEST=%d)
					WHERE test_priv.ID_TEST IS NULL
					UNION
					SELECT teachers.ID_TE, TEName 
					FROM teachers
					WHERE teachers.ID_TE=%d
					ORDER BY TEName;",
					$id_test,$id_te
					);
		$obj->query($sql);
		while($obj->next_record())
		{
			$tpl->set_var(array(
						"ID_TE"=>$obj->f("ID_TE"),
						"TENAME"=>$obj->f("TEName"),
						"SELECTED_TEACHER"=>$id_te==$obj->f("ID_TE")?"selected":""
					));
			$tpl->parse("ROWS_TEACHERS","row_teacher",true);
		}		
	}
	$tpl->parse("CONTENT_POPUP","test_priv");
	$tpl->parse("OUT","common_popup");
	$tpl->p("OUT");
}
?>