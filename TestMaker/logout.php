<?php
	include("../inc/testmaker.inc.php");
	$obj = new CTestMaker();
	$obj->LogOut();
	header("location:index.php");
?>