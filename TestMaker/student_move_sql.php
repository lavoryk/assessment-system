<?php
include "../inc/student.inc.php";
$obj= new CStudent();
if(!$obj->IsLogin())
{
	header("location:index.php");
}
else
{
	$direction=empty($_GET["direction"])?0:$_GET["direction"];
	$id_gr_left=empty($_GET["id_gr_left"])?0:$_GET["id_gr_left"];
	$id_gr_left=intval($id_gr_left);
	$id_gr_right=empty($_GET["id_gr_right"])?0:$_GET["id_gr_right"];
	$id_gr_right=intval($id_gr_right);
	$id_st=empty($_GET["id_st"])?0:$_GET["id_st"];
	$id_st=intval($id_st);
	if(strcmp($direction,"left")==0)
	{
		$obj->MoveStudent($id_st,$id_gr_right,$id_gr_left);
	}
	else if(strcmp($direction,"right")==0)
	{			
		$obj->MoveStudent($id_st,$id_gr_left,$id_gr_right);
	}
	
	
	header("location:student_move.php?id_gr_left=$id_gr_left&id_gr_right=$id_gr_right");
}
?>