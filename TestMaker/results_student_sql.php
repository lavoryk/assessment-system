<?php
include "../inc/result.inc.php";
$res = new CResult();
if(!$res->IsLogin())
{
	header("location:index.php");
}
else 
{
	$ID_RE=empty($_GET["ID_RE"])?(0):($_GET["ID_RE"]);	
	$ID_RE=intval($ID_RE);
	$Action=empty($_GET["Action"])?(""):($_GET["Action"]);
	if($res->GetInfoResult($ID_RE))
	{
		if(strcmp($Action, "DEL_LOG")==0)
			$res->DeleteLog($ID_RE);
		else
			$res->DeleteResult($ID_RE);
		header ("location:results_student.php?ID_ST=".$res->ID_ST);
	}
	else 
	{
		header("location:index.php");
	}
}
?>
