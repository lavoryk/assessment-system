<?php
include "../inc/testmaker.inc.php";
$obj=new CTestMaker();
$id_test=empty($_GET["id_test"])?(0):($_GET["id_test"]);
$id_test=intval($id_test);
if( !$obj->IsLogin() || ($id_test!=0&&$id_test!=-1&&!$obj->CanAdminTest($id_test)) )
{
	$obj->LogOut();
	header("location:index.php");
}
else
{	
	$id_te=empty($_GET["id_te"])?(0):($_GET["id_te"]);
	$id_te=intval($id_te);	
	$tpl = new Template(TESTMAKER_TPL_DIR,"keep");
	$tpl->set_file(array("common_popup"=>"common_popup.html","test_priv_by_teachers"=>"test_priv_by_teachers.html"));
	$tpl->set_block("test_priv_by_teachers","row_teacher","ROWS_TEACHERS");
	$tpl->set_var("ROWS_TEACHERS","");
	$tpl->set_var("ID_TEACHER_CURRENT",$id_te);	
	
	$obj->query("SELECT ID_TE, TEName FROM teachers ORDER BY TEName;");	
	while($obj->next_record())
	{
		$tpl->set_var(array(
						"ID_TE"=>$obj->f("ID_TE"),
						"TEName"=>$obj->f("TEName")
					));
		if($id_te==$obj->f("ID_TE"))
			$tpl->set_var("SELECTED_TEACHER","selected");
		else
			$tpl->set_var("SELECTED_TEACHER","");
		$tpl->parse("ROWS_TEACHERS","row_teacher",true);				
	}
	
	$tpl->set_block("test_priv_by_teachers","row_test_priv","ROWS_TEST_PRIV");
	$tpl->set_var("ROWS_TEST_PRIV","");
	$tpl->set_block("test_priv_by_teachers","row_test_priv_add_edit","ROW_TEST_PRIV_ADD_EDIT");
	$tpl->set_var("ROW_TEST_PRIV_ADD_EDIT","");
	$tpl->set_block("row_test_priv_add_edit","row_test","ROWS_TESTS");
	if($obj->IsTestAdmin())
		$sql=sprintf("SELECT test_priv.*, tests.ID_TEST, tests.TestName 
						FROM test_priv,tests 
						WHERE test_priv.ID_TE=%d AND tests.ID_TEST=test_priv.ID_TEST 
						ORDER BY IsBlock,tests.TestName;",
						$id_te);
	else
		$sql=sprintf("SELECT test_priv.*, tests.ID_TEST, tests.TestName 
						FROM tests,test_priv
						LEFT JOIN test_priv AS tp ON(tests.ID_TEST=tp.ID_TEST AND tp.ID_TE=%d AND tp.CanAdmin='Y')
						WHERE test_priv.ID_TE=%d AND tests.ID_TEST=test_priv.ID_TEST 
							AND tp.ID_TE IS NOT NULL
						ORDER BY IsBlock,TestName;",
						$obj->GetID_TE(),
						$id_te);
	$obj->query($sql);
	$num=0;
	while($obj->next_record())
	{
		++$num;		
		if($id_test==$obj->f("ID_TEST"))
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
						"TestName"=>$obj->f("TestName"),						
						"CANCHANGE"=>$obj->f("CanChange"),
						"CANADMIN"=>$obj->f("CanAdmin"),
						"ID_TEST"=>$obj->f("ID_TEST")
					));
			$tpl->parse("ROWS_TEST_PRIV","row_test_priv",true);
		}
	}
	
	if($id_test==-1)
	{
		++$num;
		$tpl->set_var(array(
						"NUM"=>$num,
						"CANCHANGE_CHECKED"=>"",
						"CANADMIN_CHECKED"=>""												
					));
		$tpl->parse("ROWS_TEST_PRIV","row_test_priv_add_edit",true);
	}
	if($id_test!=0)
	{
		if($obj->IsTestAdmin())
			$sql=sprintf("SELECT tests.ID_TEST, TestName, IsBlock
					FROM tests LEFT JOIN test_priv ON (tests.ID_TEST=test_priv.ID_TEST AND test_priv.ID_TE=%d)
					WHERE test_priv.ID_TE IS NULL
					UNION
					SELECT tests.ID_TEST, TestName, IsBlock
					FROM tests
					WHERE tests.ID_TEST=%d
					ORDER BY IsBlock,TestName;",
					$id_te, $id_test);
		else
			$sql=sprintf("SELECT tests.ID_TEST, TestName, IsBlock
					FROM tests 
					LEFT JOIN test_priv ON (tests.ID_TEST=test_priv.ID_TEST AND test_priv.ID_TE=%d)
					LEFT JOIN test_priv AS tp ON(tests.ID_TEST=tp.ID_TEST AND tp.ID_TE=%d AND tp.CanAdmin='Y')
					WHERE test_priv.ID_TE IS NULL AND tp.ID_TE IS NOT NULL
					UNION
					SELECT tests.ID_TEST, TestName, IsBlock
					FROM tests 
					WHERE tests.ID_TEST=%d 
					ORDER BY IsBlock,TestName;",
					$id_te, $obj->GetID_TE(), $id_test);
			/*$sql=sprintf("SELECT tests.ID_TEST, TestName, IsBlock
					FROM tests 
					LEFT JOIN test_priv ON (tests.ID_TEST=test_priv.ID_TEST AND test_priv.ID_TE=%d)
					LEFT JOIN test_priv AS tp ON(tests.ID_TEST=tp.ID_TEST AND tp.ID_TE=%d AND tp.CanAdmin='Y')
					WHERE test_priv.ID_TE IS NULL AND tp.ID_TE IS NOT NULL
					UNION
					SELECT tests.ID_TEST, TestName, IsBlock
					FROM tests,test_priv
					WHERE tests.ID_TEST=%d AND 
						test_priv.ID_TEST=tests.ID_TEST AND test_priv.ID_TE=%d AND
						test_priv.CanAdmin='Y'
					ORDER BY IsBlock,TestName;",
					$id_te, $obj->GetID_TE(), $id_test, $obj->GetID_TE());*/
		$obj->query($sql);
		while($obj->next_record())
		{
			$tpl->set_var(array(
						"ID_TEST"=>$obj->f("ID_TEST"),
						"TestName"=>$obj->f("TestName"),
						"SELECTED_TEST"=>$id_test==$obj->f("ID_TEST")?"selected":""
					));
			$tpl->parse("ROWS_TESTS","row_test",true);
		}		
	}	
	$tpl->parse("CONTENT_POPUP","test_priv_by_teachers");
	$tpl->parse("OUT","common_popup");
	$tpl->p("OUT");
}
?>