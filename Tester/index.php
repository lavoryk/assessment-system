<?php
include "../inc/tester.inc.php";
$tpl = new CTemplateTester();
$db = new CTester();
UnsetTesterSessionValue();
$db->query("SELECT * FROM groups ORDER BY GrName;");
while($db->next_record())
{	
	$tpl->append("ID_GRs", $db->f("ID_GR"));
	$tpl->append("GrNames", $db->f("GrName"));	
}
foreach ($arr_languages as $index_language=>$lang)
{	
	$tpl->append("index_languages", $index_language);	
	$tpl->append("languages", $lang["language"]);		
}
$tpl->assign("id_selected_language",  $_COOKIE["INDEX_LANGUAGE"]);
$tpl->display("index.tpl");
?>