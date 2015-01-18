<?php
	include "../inc/time_table.inc.php";
	$test = new CTimeTable();
	if(!$test->IsLogin())
	{
		header ("Location:index");
	}
	else
	{
		$Action=empty($_GET["Action"])?(""):($_GET["Action"]);
		if(strcmp($Action,"DEL")==0 )
	    {
	    	$ID_TEST=empty($_GET["ID_TEST"])?(0):($_GET["ID_TEST"]);
	    	header ("Location:time_table.php?ID_TEST=$ID_TEST");
	    	$ID_GR=empty($_GET["ID_GR"])?(0):($_GET["ID_GR"]);
	    	$ID_TEST=intval($ID_TEST);
			$ID_GR=intval($ID_GR);	
			$test->DeleteTimeTable($ID_TEST,$ID_GR);
	    }
	    else
	    {
	    	$ID_TEST=empty($_POST["ID_TEST"])?(0):($_POST["ID_TEST"]);	    	
	    	$ID_GR=empty($_POST["ID_GR"])?(0):($_POST["ID_GR"]);
	    	$PREV_ID_GR=empty($_POST["PREV_ID_GR"])?(0):($_POST["PREV_ID_GR"]);
	    	$ID_TEST=intval($ID_TEST);
			$ID_GR=intval($ID_GR);	
			$PREV_ID_GR=intval($PREV_ID_GR);
			$WriteLog=empty($_POST["WriteLog"])?('N'):('Y');
	    	$F_DATE=empty($_POST["F_DATE"])?(""):($_POST["F_DATE"]);
	    	$S_DATE=empty($_POST["S_DATE"])?(""):($_POST["S_DATE"]);
	    	if($test->GetInfoTimeTable($ID_TEST,$PREV_ID_GR))
	    	{
	    		$test->UpdateTimeTable($ID_TEST,$ID_GR,$PREV_ID_GR,$WriteLog,$S_DATE,$F_DATE);
	    	}
	    	else
	    	{
	    		$test->AddTimeTable($ID_TEST,$ID_GR,$WriteLog,$S_DATE,$F_DATE);
	    	}
	    	header ("Location:time_table.php?ID_TEST=$ID_TEST");
	    }		
	} 
?>