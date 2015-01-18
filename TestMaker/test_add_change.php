<?php
include "../inc/test.inc.php";	
$obj = new CTest();
if(!$obj->IsLogin())
{
	header("location:index.php");
}
else
{
	$ID_TEST=empty($_GET["ID_TEST"]) ? (0) : ($_GET["ID_TEST"]);
	if($obj->GetInfoTest($ID_TEST))
	{
		$TestName=$obj->TestName;
		$IsBlock=$obj->IsBlock;
		$TestTime=$obj->TestTime;
		$DisableShowPrevTask = $obj->DisableShowPrevTask;
		$IsTimeForOneQuestion=$obj->IsTimeForOneQuestion;
		$ShowTask=$obj->ShowTask;
		$TaskURL=$obj->TaskURL;			
	}
	else
	{
		$ID_TEST=0;
		$TestName="";
		$IsBlock=empty($_GET["IsBlock"]) ? ("N") : ($_GET["IsBlock"]);
		$TestTime="";
		$DisableShowPrevTask = "";
		$IsTimeForOneQuestion="" ;
		$ShowTask="";
		$TaskURL="";			
	}
	if(	($ID_TEST==0&&!$obj->IsTestCreator()) ||
		($ID_TEST!=0&&!$obj->CanUseTest($ID_TEST)))
	{
		header("location:index.php");
	}
	else
	{
		$obj->PreparePageMenu();
		$obj->tpl->set_file("test","test_add_change.html");		
		$obj->tpl->set_var(array(
								"ID_TEST"=>$ID_TEST,
								"TestName"=>$TestName,
								"IsBlock"=>$IsBlock,
								"TestTime"=>$TestTime,
								"DisableShowPrevTask" =>($DisableShowPrevTask=='Y')?("checked"):(""),
								"IsTimeForOneQuestion"=>($IsTimeForOneQuestion=='Y')?("checked"):(""),
								"ShowTask"=>($ShowTask=='Y')?("checked"):(""),
								"TaskURL"=>$TaskURL
						));
		$obj->tpl->set_block("test","exist_test_row","EXIST_TEST_ROW");
		$obj->tpl->set_block("test","links_test","LINKS_TEST");
		$obj->tpl->set_block("test","links_tests_block","LINKS_TESTS_BLOCK");	
		if($obj->IsBlock=='Y')
		{
			$obj->tpl->set_var("LINKS_TEST","");
			$obj->tpl->parse("LINKS_TESTS_BLOCK","links_tests_block");
		}
		else
		{
			$obj->tpl->set_var("LINKS_TESTS_BLOCK","");
			$obj->tpl->parse("LINKS_TEST","links_test");		
		}		
		$obj->tpl->set_var("EXIST_TEST_ROW","");
		if($ID_TEST==0 || $obj->CanAdminTest($ID_TEST))
		{
			$obj->tpl->set_var("DISABLE_EDIT","");
			if(!empty($_GET["ID_TEST_EXIST"]))
			{
				$ID_TEST_EXIST=$_GET["ID_TEST_EXIST"];
				if($obj->GetInfoTest($ID_TEST_EXIST))
				{
					$obj->tpl->set_var("ExistTestName",$obj->TestName);
					$obj->tpl->parse("EXIST_TEST_ROW","exist_test_row");
				}
			}
		}
		else
		{
			$obj->tpl->set_var("DISABLE_EDIT","disabled");
		}
		$obj->tpl->parse("CONTENT","test");
		$obj->tpl->parse("OUT","common");
		$obj->tpl->p("OUT");
	}
}
?>
