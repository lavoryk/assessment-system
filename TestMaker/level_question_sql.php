<?php
include "../inc/level_question.inc.php";
$lq=new CLevelQuestion();
if(!$lq->IsLogin())
{
	header("Location:index.php");
}
else
{
	$Action=empty($_GET["Action"])?(""):($_GET["Action"]);
	if(strcmp($Action,"DEL")==0)
	{
		
	}
	else if (strcmp($Action,"LOW")==0) 
	{
		
	}
	else if (strcmp($Action,"HIGH")==0) 
	{
		
	}
	else
	{
		$ID_TEST=empty($_POST["ID_TEST"])?(0):($_POST["ID_TEST"]);
		$ID_TEST=intval($ID_TEST);    	
		$Point=empty($_POST["Point"])?(0):($_POST["Point"]);
		$Number=empty($_POST["Number"])?(0):($_POST["Number"]);
		$lq->ChangeLevelQuestion($ID_TEST,$Point,$Number);
	}
	header("Location:level_question.php?ID_TEST=$ID_TEST");	
}
?>