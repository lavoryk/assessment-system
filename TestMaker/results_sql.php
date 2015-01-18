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
	if($res->GetInfoResultEx($ID_RE))   	
	{
		if(strcmp($Action, "DEL_LOG")==0)
			$res->DeleteLog($ID_RE);
		else
			$res->DeleteResult($ID_RE);
		header ("location:results.php?ID_TEST=".$res->ID_TEST."&ID_GR=".$res->ID_GR);
	}
	else 
	{
		header("location:index.php");
	}
}
?>
