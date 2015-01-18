<?php
include ("level_question.inc.php");
// Tester Config
define("TESTER_TPL_DIR","language/".$arr_languages[$_COOKIE["INDEX_LANGUAGE"]]["path"]);
//$RootUrl=$testy_url_root."Tester/";

class CTemplateTester extends Smarty 
{
	// лучше указать абсолютный путь
	var $template_dir = TESTER_TPL_DIR;
	var $compile_dir = "templates_c";
	var $config_dir = "config"; //??
	var $cache_dir = "cache"; //??
	function CTemplateTester()
	{
		//echo $this->template_dir;
		$this->compile_dir = "templates_c/".$GLOBALS["arr_languages"][$_COOKIE["INDEX_LANGUAGE"]]["path"];
	}
}

?>