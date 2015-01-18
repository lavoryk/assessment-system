<?php
include "../inc/teacher.inc.php";
$obj = new CTeacher();
if(!$obj->IsSysAdmin())
{
	header("location:index.php");
}
else
{
	$ID_TE=empty($_GET["ID_TE"])?(0):($_GET["ID_TE"]);
	$ID_TE=intval($ID_TE);
	if($ID_TE==0)
	{
		$TEName="";
		$GroupCreator="N";
		$TestCreator="N";
		$GroupAdmin="N";
		$TestAdmin="N";
		$SysAdmin="N";
		$ResultReader='N';
	}
	else
	{
		if($obj->GetInfoTeacher($ID_TE))
		{
			$TEName=$obj->TEName;
			$GroupCreator=$obj->GroupCreator;
			$TestCreator=$obj->TestCreator;
			$GroupAdmin=$obj->GroupAdmin;
			$TestAdmin=$obj->TestAdmin;
			$SysAdmin=$obj->SysAdmin;
			$ResultReader=$obj->ResultReader;
		}
		else 
		{
			$ID_TE=0;
			$TEName="";
			$GroupCreator="N";
			$TestCreator="N";
			$GroupAdmin="N";
			$TestAdmin="N";
			$SysAdmin="N";
			$ResultReader='N';
		}
	}
	$obj->PreparePageMenu();	
	$obj->tpl->set_file("teacher_add_change", "teacher_add_change.html");	
	$obj->tpl->set_block("teacher_add_change","New_Pass","NEW_PASS");
	$obj->tpl->set_block("teacher_add_change","Change_Pass","CHANGE_PASS");
	$obj->tpl->set_var(array(
						"ID_TE"=>$ID_TE,
						"TEName"=>$TEName,
						"GroupCreator"=>$GroupCreator=="Y"?'checked="checked"':"",
						"TestCreator"=>$TestCreator=="Y"?'checked="checked"':"",
						"GroupAdmin"=>$GroupAdmin=="Y"?'checked="checked"':"",
						"TestAdmin"=>$TestAdmin=="Y"?'checked="checked"':"",
						"SysAdmin"=>$SysAdmin=="Y"?'checked="checked"':"",
						"ResultReader"=>$ResultReader=="Y"?'checked="checked"':""
						));
	//IF to show pass fields for new user	
	if($ID_TE==0)
	{
		$obj->tpl->parse("NEW_PASS", "New_Pass");
		$obj->tpl->set_var("CHANGE_PASS", "");
	}
	//if to show link to change pass
	if($ID_TE>0)
	{
		$obj->tpl->parse("CHANGE_PASS","Change_Pass");
		$obj->tpl->set_var("NEW_PASS", "");
	}
	$obj->tpl->parse("CONTENT","teacher_add_change");
	$obj->tpl->parse("OUT","common");
	$obj->tpl->p("OUT");
}
?>