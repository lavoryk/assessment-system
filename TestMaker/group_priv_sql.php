<?php
include "../inc/teacher.inc.php";
$obj=new CTeacher();
$id_gr=empty($_GET["id_gr"])?(0):($_GET["id_gr"]);
$id_gr=intval($id_gr);
$id_te=empty($_GET["id_te"])?(0):($_GET["id_te"]);
$id_te=intval($id_te);
if(USE_TRANSACTION)
	$obj->query("START TRANSACTION;");
else
	$obj->lock(array("teachers","group_priv","groups"));
if(!$obj->CanAdminGroup($id_gr)||!$obj->GetInfoTeacher($id_te))
{
	if(USE_TRANSACTION)
		$obj->query("COMMIT;");
	else
		$obj->unlock();	
	header("location:test_priv.php");
	//$obj->LogOut();//Хоча так чешуться руки
	//header("location:index.php");
}
else
{
	header("location:group_priv.php?id_gr=$id_gr");	
	$Action=empty($_GET["Action"])?(""):($_GET["Action"]);
	$obj->query("DELETE FROM group_priv WHERE ID_GR=$id_gr AND ID_TE=$id_te;");	
	if(strcmp($Action,"DEL")!=0)
	{
		if(!empty($_GET["CanAdmin"]))
			$CanAdmin=$CanChange='Y';
		else
		{
			$CanAdmin='N';
			$CanChange=empty($_GET["CanChange"])?'N':'Y';
		}			
		$sql=sprintf("INSERT INTO group_priv (ID_TE,ID_GR,CanChange,CanAdmin) VALUES (%d,%d,'%s','%s');",
					$id_te, $id_gr,$CanChange,$CanAdmin);
		$obj->query($sql);	
	}
	if(USE_TRANSACTION)
		$obj->query("COMMIT;");
	else
		$obj->unlock();
}
?>