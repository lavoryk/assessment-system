<?php
include "../inc/student.inc.php";
$ID_GR=empty($_GET["ID_GR"])?(0):($_GET["ID_GR"]);
$ID_GR=intval($ID_GR);
$obj=new CStudent();
if(!$obj->IsLogin()|| !$obj->CanUseGroup($ID_GR) || !$obj->GetInfoGroup($ID_GR))
{
	header("location:index.php");
}
else
{
	$obj->PreparePageMenu();
	$obj->tpl->set_file("students", "students.html");
	$obj->tpl->set_block("students","student_row","STUDENTS_ROWS");
	$obj->tpl->set_block("students","add_new_student","ADD_NEW_STUDENT");
	$obj->tpl->set_block("student_row","can_change","CAN_CHANGE");		
	$obj->tpl->set_block("student_row","can_not_change","CAN_NOT_CHANGE");
	$obj->tpl->set_var("ID_GR",$ID_GR);
	$obj->tpl->set_var("GRNAME",$obj->GrName);
	
	if($obj->CanChangeGroup($ID_GR))
	{
		$obj->tpl->parse("ADD_NEW_STUDENT","add_new_student");
		$obj->tpl->parse("CAN_CHANGE","can_change");
		$obj->tpl->set_var("CAN_NOT_CHANGE","");
	}
	else
	{
		$obj->tpl->set_var("ADD_NEW_STUDENT","");
		$obj->tpl->parse("CAN_NOT_CHANGE","can_not_change");
		$obj->tpl->set_var("CAN_CHANGE","");
	}
	
	$query=sprintf("SELECT * FROM students WHERE students.ID_GR=%d ORDER BY StName;",$ID_GR);	
	$obj->query($query);
	$i=0;
	while($obj->next_record())
	{
		$obj->tpl->set_var(array(
						"NUM"=>++$i,
						"STName"=>$obj->f("STName"),					
						"ID_ST"=>$obj->f("ID_ST"),
						"ID_GR"=>$ID_GR
							)	
						);
		$obj->tpl->parse("STUDENTS_ROWS","student_row",true);	
	}
	if($i==0)
	{
		$obj->tpl->set_var("STUDENTS_ROWS","");
	}		
	$obj->tpl->parse("CONTENT","students");
	$obj->tpl->parse("OUT","common");
	$obj->tpl->p("OUT");
}
?>
