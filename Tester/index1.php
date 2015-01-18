<?php
include "../inc/tester.inc.php";
$ID_TEST = empty($_GET["ID_TEST"])?0:intval($_GET["ID_TEST"]);
$ID_GR = empty($_GET["ID_GR"])?0:intval($_GET["ID_GR"]);
if($ID_TEST>0)
{
	$tpl = new CTemplateTester();
	$tpl->assign("ID_TEST", $ID_TEST);
	$db=new CTester();
	UnsetTesterSessionValue();
	// Заповнюємо групи
	$strQuery = sprintf("SELECT groups.* FROM groups, time_table WHERE groups.ID_GR=time_table.ID_GR AND time_table.ID_TEST = %d ORDER BY GrName;", $ID_TEST);
	$db->query(	$strQuery);	
	while($db->next_record())
	{
		$tpl->append(array(	"ID_GR"=>$db->f("ID_GR"),
								"GrName"=>$db->f("GrName")
								)
					);		
		
	}
	$tpl->assign("ID_GR_SELECTED", $ID_GR);
	// Заповнюємо імена користувачів
	$strQuery = sprintf("SELECT * FROM students WHERE students.ID_GR=%d ORDER BY STName;", $ID_GR);
	$db->query(	$strQuery);	
	while($db->next_record())
	{
		$tpl->append("STName",$db->f("STName"));		
	}	
	foreach ($arr_languages as $index_language=>$lang)
	{	
		$tpl->append("index_languages", $index_language);	
		$tpl->append("languages", $lang["language"]);		
	}
	$tpl->assign("id_selected_language",  $_COOKIE["INDEX_LANGUAGE"]);
	$tpl->display("index1.tpl");
}
else 
{
	header("location:index.php");	
}
?>