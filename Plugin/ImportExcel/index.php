<?php
header("location:page01.php");
/*
include_once "../TestMaker/inc/question.inc.php";
include "inc/config.inc.php";
$obj = new CQuestion();
if(!$obj->IsLogin())
{
	header("location:../TestMaker/index.php");
}
else
{		
	$tpl = new PluginTpl();
	if( empty($_GET["PageNum"]) || intval($_GET["PageNum"])<MIN_PAGE_NUMBER || intval($_GET["PageNum"])>MAX_PAGE_NUMBER)
	{
		$_GET["PageNum"] = 1;
	}	
	if($_GET["PageNum"] == 1)
	{		
		$tpl->display("page01.tpl");
	}
	else if($_GET["PageNum"] == 2)
	{
		
	}
	else if($_GET["PageNum"] == 3)
	{
		
	}
	else if($_GET["PageNum"] == 4)
	{
		
	}
	else
	{
		session_destroy();
		header("location:voinov_plugin.php");
	}
}
*/
?>