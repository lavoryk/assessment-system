<?php
	include "../inc/test.inc.php";
	$test=new CTest();
	if(!$test->IsLogin())
	{
		header("location:index.php");
	}
	else
	{
		$IsTestExist=false;
		$Action=empty($_GET["Action"])?(""):($_GET["Action"]);
		if(strcmp($Action,"DEL")==0)
		{
			$ID_TEST=empty($_GET["ID_TEST"])?(0):( intval($_GET["ID_TEST"]));
			//if($test->GetInfoTest($ID_TEST))
			//{
				//$IsBlock=$test->IsBlock;				
				$test->DeleteTest($ID_TEST);
			//}
			$IsBlock=empty($_GET["IsBlock"])?(""):( strval($_GET["IsBlock"]));
		}
		else
		{
			$ID_TEST=empty($_POST["ID_TEST"])?(0):(intval($_POST["ID_TEST"]));
			$TestName=empty($_POST["TestName"])?(""):($_POST["TestName"]);
			//--- ‗ךשמ םולא Ñלטסכ נמבטעט, שמסü?
			$IsBlock=empty($_POST["IsBlock"])?(""):(strval($_POST["IsBlock"]));
			//---
			$TestTime=empty($_POST["TestTime"])?(0):(intval($_POST["TestTime"]));
			$DisableShowPrevTask = empty($_POST["DisableShowPrevTask"])?("N"):("Y");
			$IsTimeForOneQuestion = empty($_POST["IsTimeForOneQuestion"])?("N"):("Y");
			$ShowTask=empty($_POST["ShowTask"])?("N"):("Y");
			$TaskURL=empty($_POST["TaskURL"])?(""):($_POST["TaskURL"]);
			$ID_TEST_EXIST=$test->GetID_TEST($TestName);
			if(($ID_TEST==0&&$ID_TEST_EXIST!=0)||
				($ID_TEST!=0&&$ID_TEST_EXIST!=$ID_TEST&&$ID_TEST_EXIST!=0) )
				$IsTestExist=true;
			else
			{
				$IsTestExist=false;
				if($ID_TEST == 0)
				{
	        		$test->AddTest($TestName,$IsBlock,$TestTime,$DisableShowPrevTask,$IsTimeForOneQuestion,$ShowTask,$TaskURL);
				}
    			else
    			{    			
					$test->UpdateTest($ID_TEST, $TestName,$IsBlock,$TestTime,$DisableShowPrevTask,$IsTimeForOneQuestion,$ShowTask,$TaskURL);
    			}
			}
		}
		if($test->IsYN($IsBlock))
		{
			if($IsTestExist)
				header ("location:test_add_change.php?ID_TEST=$ID_TEST&IsBlock=$IsBlock&ID_TEST_EXIST=$ID_TEST_EXIST");
			else
				header ("location:tests.php?IsBlock=$IsBlock");
		}		
		else 
		{
			header ("location:index.php");
		}
	}
?>