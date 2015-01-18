<?php
include "../inc/testmaker.inc.php";
$obj=new CTestMaker();
$id_gr=empty($_GET["id_gr"])?(0):($_GET["id_gr"]);
$id_gr=intval($id_gr);
if( !$obj->IsLogin() || ($id_gr!=0&&$id_gr!=-1&&!$obj->CanAdminGroup($id_gr)) )
{
	$obj->LogOut();
	header("location:index.php");
}
else
{	
	$id_te=empty($_GET["id_te"])?(0):($_GET["id_te"]);
	$id_te=intval($id_te);	
	$tpl = new Template(TESTMAKER_TPL_DIR,"keep");
	$tpl->set_file(array("common_popup"=>"common_popup.html","group_priv_by_teachers"=>"group_priv_by_teachers.html"));
	$tpl->set_block("group_priv_by_teachers","row_teacher","ROWS_TEACHERS");
	$tpl->set_var("ROWS_TEACHERS","");
	$tpl->set_var("ID_TEACHER_CURRENT",$id_te);	
	
	$obj->query("SELECT ID_TE, TEName FROM teachers ORDER BY TEName;");
	while($obj->next_record())
	{
		$tpl->set_var(array(
						"ID_TE"=>$obj->f("ID_TE"),
						"TEName"=>$obj->f("TEName")
					));
		if($id_te==$obj->f("ID_TE"))
			$tpl->set_var("SELECTED_TEACHER","selected");
		else
			$tpl->set_var("SELECTED_TEACHER","");
		$tpl->parse("ROWS_TEACHERS","row_teacher",true);				
	}
	
	$tpl->set_block("group_priv_by_teachers","row_group_priv","ROWS_GROUP_PRIV");
	$tpl->set_var("ROWS_GROUP_PRIV","");
	$tpl->set_block("group_priv_by_teachers","row_group_priv_add_edit","ROW_GROUP_PRIV_ADD_EDIT");
	$tpl->set_var("ROW_GROUP_PRIV_ADD_EDIT","");
	$tpl->set_block("row_group_priv_add_edit","row_group","ROWS_GROUPS");
	if($obj->IsGroupAdmin())
		$sql=sprintf("SELECT group_priv.*, groups.ID_GR, groups.GrName 
						FROM group_priv,groups 
						WHERE group_priv.ID_TE=%d AND groups.ID_GR=group_priv.ID_GR 
						ORDER BY GrName;",
						$id_te);
	else
		$sql=sprintf("SELECT group_priv.*, groups.ID_GR, groups.GrName 
						FROM groups,group_priv
						LEFT JOIN group_priv AS gp ON(groups.ID_GR=gp.ID_GR AND gp.ID_TE=%d AND gp.CanAdmin='Y')
						WHERE group_priv.ID_TE=%d AND groups.ID_GR=group_priv.ID_GR 
							AND gp.ID_TE IS NOT NULL
						ORDER BY GrName;",
						$obj->GetID_TE(),
						$id_te);
	$obj->query($sql);
	$num=0;
	while($obj->next_record())
	{
		++$num;		
		if($id_gr==$obj->f("ID_GR"))
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
						"GrName"=>$obj->f("GrName"),						
						"CANCHANGE"=>$obj->f("CanChange"),
						"CANADMIN"=>$obj->f("CanAdmin"),
						"ID_GR"=>$obj->f("ID_GR")
					));
			$tpl->parse("ROWS_GROUP_PRIV","row_group_priv",true);
		}
	}
	
	if($id_gr==-1)
	{
		++$num;
		$tpl->set_var(array(
						"NUM"=>$num,
						"CANCHANGE_CHECKED"=>"",
						"CANADMIN_CHECKED"=>""												
					));
		$tpl->parse("ROWS_GROUP_PRIV","row_group_priv_add_edit",true);
	}
	if($id_gr!=0)
	{
		if($obj->IsTestAdmin())
			$sql=sprintf("SELECT groups.ID_GR, GrName
					FROM groups LEFT JOIN group_priv ON (groups.ID_GR=group_priv.ID_GR AND group_priv.ID_TE=%d)
					WHERE group_priv.ID_TE IS NULL
					UNION
					SELECT groups.ID_GR, GrName
					FROM groups
					WHERE groups.ID_GR=%d
					ORDER BY GrName;",
					$id_te, $id_gr);
		else
			$sql=sprintf("SELECT groups.ID_GR, GrName
					FROM groups 
					LEFT JOIN group_priv ON (groups.ID_GR=group_priv.ID_GR AND group_priv.ID_TE=%d)
					LEFT JOIN group_priv AS gp ON(groups.ID_GR=gp.ID_GR AND gp.ID_TE=%d AND gp.CanAdmin='Y')
					WHERE group_priv.ID_TE IS NULL AND gp.ID_TE IS NOT NULL
					UNION
					SELECT groups.ID_GR, GrName
					FROM groups 
					WHERE groups.ID_GR=%d 
					ORDER BY GrName;",
					$id_te, $obj->GetID_TE(), $id_gr);		
		$obj->query($sql);
		while($obj->next_record())
		{
			$tpl->set_var(array(
						"ID_GR"=>$obj->f("ID_GR"),
						"GrName"=>$obj->f("GrName"),
						"SELECTED_GROUP"=>$id_gr==$obj->f("ID_GR")?"selected":""
					));
			$tpl->parse("ROWS_GROUPS","row_group",true);
		}		
	}	
	$tpl->parse("CONTENT_POPUP","group_priv_by_teachers");
	$tpl->parse("OUT","common_popup");
	$tpl->p("OUT");
}
?>