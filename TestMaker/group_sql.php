<?php
include "../inc/group.inc.php";
$group = new CGroup();   	
if(!$group->IsLogin())
{
	header("location:index.php");
}
else
{		
	$Action=empty($_GET["Action"])?(""):($_GET["Action"]);
	if(strcmp($Action,"DEL")==0)
	{		
		$ID_GR=empty($_GET["ID_GR"])?(0):($_GET["ID_GR"]);
		$ID_GR=intval($ID_GR);
		$group->DeleteGroup($ID_GR);
		header ("Location:groups.php");
	}
	else
	{
		$ID_GR=empty($_POST["ID_GR"])?(-1):($_POST["ID_GR"]);
		$ID_GR=intval($ID_GR);
		$GrName=empty($_POST["GrName"])?(""):($_POST["GrName"]);
		$_id_gr_=$group->GetID_GR($GrName);
		if($_id_gr_!=-1)		{
			
			if($_id_gr_==$ID_GR)
			{
				header ("Location:groups.php");
			}				
			else 
				header ("Location:groups.php?ID_GR=$ID_GR&error_no=".ERROR_GROUP_ALLREADY_EXISTS);
		}
		else 
		{			
			if($ID_GR == -1)
			{
				$group->AddGroup($GrName);
			}
	   		else
	   		{
				$group->ChangeGroup($ID_GR,$GrName);
			}
			header ("Location:groups.php");
		}
	}	
}
?>