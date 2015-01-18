<?php
include "../inc/student.inc.php";
$obj=new CStudent();
if(!$obj->IsLogin())
{
	header("location:index.php");
}
else
{
	$id_gr_right=empty($_GET["id_gr_right"])?(0):($_GET["id_gr_right"]);
	$id_gr_left=empty($_GET["id_gr_left"])?(0):($_GET["id_gr_left"]);
	$id_gr_right=intval($id_gr_right);
	$id_gr_left=intval($id_gr_left);
	if($id_gr_right==$id_gr_left)
	{
		$id_gr_right=0;
	}
	$tpl = new Template(TESTMAKER_TPL_DIR,"keep");
	$tpl->set_file(array("common_popup"=>"common_popup.html","student_move"=>"student_move.html"));
	$tpl->set_block("student_move","group_row_left","GROUPS_ROWS_LEFT");
	$tpl->set_block("student_move","group_row_right","GROUPS_ROWS_RIGHT");
	$tpl->set_var(array("ID_GR_RIGHT_PREV_VALUE"=>$id_gr_right,"ID_GR_LEFT_PREV_VALUE"=>$id_gr_left));
	if($obj->IsGroupAdmin())
	{
		$sql = "SELECT * FROM groups ORDER BY GrName;";
	}
	else 
	{
		$sql = sprintf("SELECT groups.* 
						FROM groups, group_priv 
						WHERE group_priv.ID_TE=%d AND (group_priv.CanChange='Y' OR group_priv.CanAdmin='Y') AND 
						group_priv.ID_GR=groups.ID_GR
						ORDER BY GrName;",
						$obj->GetID_TE()
						);
	}
	$obj->query($sql);
	while($obj->next_record())
	{
		if($obj->f("ID_GR")==$id_gr_left)
		{
			$tpl->set_var("SELECTED_LEFT","selected");
		}
		else
		{
			$tpl->set_var("SELECTED_LEFT","");
		}
		$tpl->set_var(array(
							"ID_GR_LEFT"=>$obj->f("ID_GR"),
							"GRNAME_LEFT"=>$obj->f("GrName")
							));
		if($obj->f("ID_GR")==$id_gr_right)
		{
			$tpl->set_var("SELECTED_RIGHT","selected");
		}
		else
		{
			$tpl->set_var("SELECTED_RIGHT","");
		}
		$tpl->set_var(array(
							"ID_GR_RIGHT"=>$obj->f("ID_GR"),
							"GRNAME_RIGHT"=>$obj->f("GrName")
							));
		$tpl->parse("GROUPS_ROWS_LEFT","group_row_left",true);
		$tpl->parse("GROUPS_ROWS_RIGHT","group_row_right",true);
	}
	$tpl->set_block("student_move","student_row_left","STUDENTS_ROWS_LEFT");
	$tpl->set_var("STUDENTS_ROWS_LEFT","");	
	$obj->query("SELECT ID_ST, StName FROM students WHERE ID_GR=$id_gr_left ORDER BY StName;");	
	$num=1;
	while($obj->next_record())
	{		
		$tpl->set_var(array(
							"NUM_LEFT"=>$num,
							"STNAME"=>$obj->f("StName"),
							"ID_ST"=>$obj->f("ID_ST")
							));
		++$num;
		$tpl->parse("STUDENTS_ROWS_LEFT","student_row_left",true);
	}
	
	$tpl->set_block("student_move","student_row_right","STUDENTS_ROWS_RIGHT");
	$tpl->set_var("STUDENTS_ROWS_RIGHT","");
	
	$obj->query("SELECT ID_ST, StName FROM students WHERE ID_GR=$id_gr_right ORDER BY StName;");	
	$num=1;
	while($obj->next_record())
	{		
		$tpl->set_var(array(
							"NUM_RIGHT"=>$num,
							"STNAME"=>$obj->f("StName"),
							"ID_ST"=>$obj->f("ID_ST")
							));
		++$num;
		$tpl->parse("STUDENTS_ROWS_RIGHT","student_row_right",true);
	}	
	$tpl->parse("CONTENT_POPUP","student_move");
	$tpl->parse("OUT","common_popup");
	$tpl->p("OUT");	
}
?>