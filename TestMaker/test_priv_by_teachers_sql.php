<?php
include "../inc/teacher.inc.php";
$obj=new CTeacher();
$id_test=empty($_GET["id_test"])?(0):($_GET["id_test"]);
$id_test=intval($id_test);
$id_te=empty($_GET["id_te"])?(0):($_GET["id_te"]);
$id_te=intval($id_te);
if(USE_TRANSACTION)
	$obj->query("START TRANSACTION;");
else
	$obj->lock(array("teachers","test_priv","tests"));
if(!$obj->CanAdminTest($id_test)||!$obj->GetInfoTeacher($id_te))
{
	if(USE_TRANSACTION)
		$obj->query("COMMIT;");
	else
		$obj->unlock();	
	header("location:test_priv_by_teachers.php");
	//$obj->LogOut();//Хоча так чешуться руки
	//header("location:index.php");
}
else
{
	header("location:test_priv_by_teachers.php?id_te=$id_te");	
	$Action=empty($_GET["Action"])?(""):($_GET["Action"]);
	$obj->query("DELETE FROM test_priv WHERE ID_TEST=$id_test AND ID_TE=$id_te;");	
	if(strcmp($Action,"DEL")!=0)
	{
		if(!empty($_GET["CanAdmin"]))
			$CanAdmin=$CanChange='Y';
		else
		{
			$CanAdmin='N';
			$CanChange=empty($_GET["CanChange"])?'N':'Y';
		}
			
		$sql=sprintf("INSERT INTO test_priv (ID_TE,ID_TEST,CanChange,CanAdmin) VALUES (%d,%d,'%s','%s');",
					$id_te, $id_test,$CanChange,$CanAdmin);
		$obj->query($sql);	
	}
	if(USE_TRANSACTION)
		$obj->query("COMMIT;");
	else
		$obj->unlock();
}
?>