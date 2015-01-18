<?php
include "../inc/test.inc.php";
$obj=new CTest();
$ID_TEST_BLOCK=empty($_GET["ID_TEST_BLOCK"])?(0):($_GET["ID_TEST_BLOCK"]);  
$ID_TEST_BLOCK=intval($ID_TEST_BLOCK);
if(!$obj->IsLogin())
{
	header("location:index.php");
}
else if(!$obj->GetInfoTest($ID_TEST_BLOCK))
{
	header("location:tests.php");
}
else if(!$obj->CanUseTest($ID_TEST_BLOCK))
{
	$obj->LogOut();
	header("location:tests.php");
}
else
{
	$obj->query("SELECT COUNT(*) FROM level_question WHERE ID_TEST=$ID_TEST_BLOCK;");
	$obj->next_record();
	if(!($obj->f(0)>0))
	{
		header("location:level_question.php?ID_TEST=$ID_TEST_BLOCK");
	}
	else 
	{		
		$obj->PreparePageMenu();
		$obj->tpl->set_file("tests_in_block", "tests_in_block.html");
		$obj->tpl->set_block("tests_in_block","tests_in_block_row_top","TESTS_IN_BLOCK_ROWS_TOP");
		$obj->tpl->set_block("tests_in_block","tests_in_block_row","TESTS_IN_BLOCK_ROWS");
		$obj->tpl->set_var("BLOCKNAME",$obj->TestName);
		//***************************************************************
		$query=sprintf("SELECT tests.ID_TEST,tests.TestName FROM tests, tests_blocks WHERE tests.ID_TEST=tests_blocks.ID_TEST AND tests.IsBlock='N'AND tests_blocks.ID_TEST_BLOCK=%d ORDER BY TestName;",$ID_TEST_BLOCK);
		$obj->query($query);
		$num=0;
		while($obj->next_record())
		{
			$obj->tpl->set_var(array(
							"NUM_TOP"=>++$num,
							"TestName_top"=>$obj->f("TestName"),
							"ID_TEST_BLOCK"=>$ID_TEST_BLOCK,
							"ID_TEST"=>$obj->f("ID_TEST")
								)	
							);
			$obj->tpl->parse("TESTS_IN_BLOCK_ROWS_TOP","tests_in_block_row_top",true);
		}		
		if($num==0)
		{
			$obj->tpl->set_var("TESTS_IN_BLOCK_ROWS_TOP","");
		}	
		//*****************************************************************
		if($obj->IsTestAdmin())
			$query=sprintf("SELECT tests.ID_TEST,tests.TestName 
						FROM tests 
						LEFT JOIN tests_blocks ON tests.ID_TEST=tests_blocks.ID_TEST AND tests_blocks.ID_TEST_BLOCK=%d 
						WHERE tests_blocks.ID_TEST IS NULL AND tests.IsBlock='N' ORDER BY TestName;",
						$ID_TEST_BLOCK);
		else
			$query=sprintf("SELECT tests.ID_TEST,tests.TestName 
						FROM tests 
						LEFT JOIN tests_blocks ON (tests.ID_TEST=tests_blocks.ID_TEST AND tests_blocks.ID_TEST_BLOCK=%d) 
						LEFT JOIN test_priv ON (tests.ID_TEST=test_priv.ID_TEST AND test_priv.ID_TE=%d) 
						WHERE tests_blocks.ID_TEST IS NULL AND tests.IsBlock='N' AND test_priv.ID_TE IS NOT NULL
						ORDER BY TestName;",
						$ID_TEST_BLOCK,$obj->GetID_TE());
		$obj->query($query);
		$num=0;
		while($obj->next_record())
		{
			$obj->tpl->set_var(array(
							"NUM"=>++$num,
							"TestName"=>$obj->f("TestName"),
							"ID_TEST_BLOCK"=>$ID_TEST_BLOCK,
							"ID_TEST"=>$obj->f("ID_TEST")
								)
							);
			$obj->tpl->parse("TESTS_IN_BLOCK_ROWS","tests_in_block_row",true);
		}
		if($num==0)
		{
			$obj->tpl->set_var("TESTS_IN_BLOCK_ROWS","");
		}
		$obj->tpl->parse("CONTENT","tests_in_block");
		$obj->tpl->parse("OUT","common");
		$obj->tpl->p("OUT");	
	}	
}
?>
