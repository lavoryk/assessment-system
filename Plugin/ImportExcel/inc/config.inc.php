<?php
	include_once "../../inc/testsys.inc.php";
	include "Excel/reader.php";
	class PluginTpl extends Smarty 
	{
		// ����� ������� ���������� ����
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
	define("COL_WITH_QUESTION", 2); // ������� � ���������
	
	define("ROW_WITH_ANSWERS", 3);	//������ � ��������, ��� ������ ������ ������ � ��������
	
	define("COL_WITH_LEVEL", 1);	// ������� � ��������
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