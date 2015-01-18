<?php
include "../inc/testmaker.inc.php";
$obj=new CTestMaker();
$id_gr=empty($_GET["id_gr"])?(0):($_GET["id_gr"]);
$id_gr=intval($id_gr);	
if(!$obj->IsLogin()||($id_gr!=0&&!$obj->CanAdminGroup($id_gr)))
{
	$obj->LogOut();
	header("location:index.php");
}
else
{	
	$id_te=empty($_GET["id_te"])?(0):($_GET["id_te"]);
	$id_te=intval($id_te);	
	$tpl = new Template(TESTMAKER_TPL_DIR,"keep");
	$tpl->set_file(array("common_popup"=>"common_popup.html","group_priv"=>"group_priv.html"));
	$tpl->set_block("group_priv","row_group","ROWS_GROUPS");
	$tpl->set_var("ROWS_GROUPS","");
	$tpl->set_var("ID_GROUP_CURRENT",$id_gr);
	if($obj->IsGroupAdmin())
		$sql="SELECT ID_GR, GrName FROM groups ORDER BY GrName;";
	else
		$sql=sprintf("SELECT groups.ID_GR, GrName FROM groups,group_priv WHERE group_priv.ID_TE=%d AND group_priv.CanAdmin='Y' AND groups.ID_GR=group_priv.ID_GR ORDER BY GrName;",
					$obj->GetID_TE());
	$obj->query($sql);	
	while($obj->next_record())
	{
		$tpl->set_var(array(
						"ID_GR"=>$obj->f("ID_GR"),
						"GrName"=>$obj->f("GrName")
					));
		if($id_gr==$obj->f("ID_GR"))
			$tpl->set_var("SELECTED_GROUP","selected");
		else
			$tpl->set_var("SELECTED_GROUP","");
		$tpl->parse("ROWS_GROUPS","row_group",true);				
	}	
	$tpl->set_block("group_priv","row_group_priv","ROWS_GROUP_PRIV");
	$tpl->set_var("ROWS_GROUP_PRIV","");
	$tpl->set_block("group_priv","row_group_priv_add_edit","ROW_GROUP_PRIV_ADD_EDIT");
	$tpl->set_var("ROW_GROUP_PRIV_ADD_EDIT","");
	$tpl->set_block("row_group_priv_add_edit","row_teacher","ROWS_TEACHERS");
	$obj->query("SELECT group_priv.*, teachers.ID_TE, teachers.TEName FROM group_priv,teachers WHERE group_priv.ID_GR=$id_gr AND teachers.ID_TE=group_priv.ID_TE ORDER BY teachers.TEName;");
	$num=0;
	while($obj->next_record())
	{
		++$num;		
		if($id_te==$obj->f("ID_TE"))
		{
			$tpl->set_var(array(
						"NUM"=>$num,
						"CANCHANGE_CHECKED"=>$obj->f("CanChange")=='Y'?"checked":"",
						"CANADMIN_CHECKED"=>$obj->f("CanAdmin")=='Y'?"checked":""
					));
			$tpl->parse("ROWS_GROUP_PRIV","row_group_priv_add_edit",true);
		}
		else
		{
			$tpl->set_var(array(
						"NUM"=>$num,
						"TENAME"=>$obj->f("TEName"),						
						"CANCHANGE"=>$obj->f("CanChange"),
						"CANADMIN"=>$obj->f("CanAdmin"),
						"ID_TE"=>$obj->f("ID_TE")
					));
			$tpl->parse("ROWS_GROUP_PRIV","row_group_priv",true);
		}
	}	
	if($id_te==-1)
	{
		++$num;
		$tpl->set_var(array(
						"NUM"=>$num,
						"CANCHANGE_CHECKED"=>"",
						"CANADMIN_CHECKED"=>""												
					));
		$tpl->parse("ROWS_GROUP_PRIV","row_group_priv_add_edit",true);
	}
	if($id_te!=0)
	{
		$sql=sprintf("SELECT teachers.ID_TE, TEName 
					FROM teachers LEFT JOIN group_priv ON (teachers.ID_TE=group_priv.ID_TE AND group_priv.ID_GR=%d)
					WHERE group_priv.ID_GR IS NULL
					UNION
					SELECT teachers.ID_TE, TEName 
					FROM teachers
					WHERE teachers.ID_TE=%d
					ORDER BY TEName;",
					$id_gr,$id_te
					);
		$obj->query($sql);
		while($obj->next_record())
		{
			$tpl->set_var(array(
						"ID_TE"=>$obj->f("ID_TE"),
						"TENAME"=>$obj->f("TEName"),
						"SELECTED_TEACHER"=>$id_te==$obj->f("ID_TE")?"selected":""
					));
			$tpl->parse("ROWS_TEACHERS","row_teacher",true);
		}		
	}	
	$tpl->parse("CONTENT_POPUP","group_priv");
	$tpl->parse("OUT","common_popup");
	$tpl->p("OUT");
}
?>