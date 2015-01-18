<?php
	include_once "../../inc/testsys.inc.php";
	include "Excel/reader.php";
	class PluginTpl extends Smarty 
	{
		// лучше указать абсолютный путь
		var $template_dir = "templates";
		var $compile_dir = "templates_c";
		var $config_dir = "config";
		var $cache_dir = "cache";
	}
	function swap(&$val01, &$val02)
	{
		$tmp = $val01;
		$val01 = $val02;
		$val02 = $tmp;
	}
	define("COL_WITH_QUESTION", 2); // Колонка с вопросами
	
	define("ROW_WITH_ANSWERS", 3);	//Строка с ответами, или просто первая строка с ответами
	
	define("COL_WITH_LEVEL", 1);	// Колонка с уровнями
	function UnsetAllValue()
	{
		unset($_SESSION["data"]);
		unset($_SESSION["Tasks"]);
		unset($_SESSION["ID_TEST"]);
		unset($_SESSION["boundsheet"]);
		unset($_SESSION["ID_Level"]);
		unset($_SESSION["file_name"]);
	}
?>