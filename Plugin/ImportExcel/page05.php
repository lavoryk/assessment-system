<?php
	include "inc/config.inc.php";	
	if(isset($_GET["AddCount"]))
	{		
		$AddCount = intval($_GET["AddCount"]);
		$tpl = new PluginTpl();		
		$tpl->assign("AddCount", $AddCount);
		$tpl->display("page05.tpl");
	}
	else 
	{
		header("location:page01.php");
	}
?>