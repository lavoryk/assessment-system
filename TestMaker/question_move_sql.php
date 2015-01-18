<?php
include "../inc/question.inc.php";
$obj= new CQuestion();
if(!$obj->IsLogin())
{
	header("location:index.php");
}
else
{	
	$id_test_left=empty($_GET["id_test_left"])?0:$_GET["id_test_left"];
	$id_test_left=intval($id_test_left);
	$id_test_right=empty($_GET["id_test_right"])?0:$_GET["id_test_right"];
	$id_test_right=intval($id_test_right);
	
	$action=empty($_GET["action"])?0:$_GET["action"];
	
	$id_qu=empty($_GET["id_qu"])?0:$_GET["id_qu"];
	$id_qu=intval($id_qu);
	if(strcmp($action,"copy")==0)
	{
		$obj->CopyQuestion($id_qu,$id_test_left,$id_test_right);
	}
	else if(strcmp($action,"move")==0)
	{			
		$obj->MoveQuestion($id_qu,$id_test_left,$id_test_right);
	}
	else if (strcmp($action,"del")==0)
	{
		$obj->DeleteQuestion($id_qu);
	}
	header("location:question_move.php?id_test_left=$id_test_left&id_test_right=$id_test_right");
}
?>