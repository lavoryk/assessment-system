<?php
include "../inc/teacher.inc.php";
$obj = new CTeacher();
if(!$obj->IsLogin())
{
	header("location:index.php");
}
else
{
	$ID_TE=empty($_GET["ID_TE"])?(0):(intval($_GET["ID_TE"]));
	$obj->PreparePageMenu();
	$obj->tpl->set_file("teacher_change_pass", "teacher_change_pass.html");
	$obj->tpl->set_block("teacher_change_pass","oldpass","OLDPASS");
	if($ID_TE==0 && $obj->GetInfoTeacher($obj->GetID_TE()))
	{		
		$TEName=$obj->TEName;
		$obj->tpl->parse("OLDPASS","oldpass");		
	}
	else if($obj->IsSysAdmin()&&$obj->GetInfoTeacher($ID_TE))
	{
		$TEName=$obj->TEName;
		$obj->tpl->set_var("OLDPASS","");		
	}	
	else
	{
		header("location:index.php");
	}	
	$obj->tpl->set_var(array(
							"ID_TE"=>$ID_TE,
							"TEName"=>$TEName,
							));
	$obj->tpl->parse("CONTENT","teacher_change_pass");
	$obj->tpl->parse("OUT","common");
	$obj->tpl->p("OUT");
}
?>