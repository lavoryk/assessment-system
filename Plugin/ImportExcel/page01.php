<?php
include_once "../../inc/testmaker.inc.php";
include "inc/config.inc.php";
$obj = new CTestMaker();
if(!$obj->IsLogin())
{
	header("location:../TestMaker/index.php");
}
else
{
	UnsetAllValue();
	$tpl = new PluginTpl();
	$tpl->display("page01.tpl");
}
?>