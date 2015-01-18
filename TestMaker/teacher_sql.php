<?php
	include "../inc/teacher.inc.php";
	$obj = new CTeacher();	
	if(!$obj->IsSysAdmin())
	{
		header("location:index.php");
	}
	else
	{
		header("location:teachers.php");		
		$Action=empty($_GET["Action"])?(""):($_GET["Action"]);
		if(strcmp($Action,"DEL")==0)
		{
			$ID_TE=empty($_GET["ID_TE"])?(0):( intval($_GET["ID_TE"]) );
			$obj->DeleteTeacher($ID_TE);
		}
		else
		{		
			$TEName=empty($_POST["TEName"])?(""):($_POST["TEName"]);
			$ID_TE=empty($_POST["ID_TE"])?(0):(intval($_POST["ID_TE"]));
			$TestCreator=isset($_POST["TestCreator"])?("Y"):("N");
			$GroupCreator=isset($_POST["GroupCreator"])?("Y"):("N");
			$TestAdmin=isset($_POST["TestAdmin"])?("Y"):("N");
			$GroupAdmin=isset($_POST["GroupAdmin"])?("Y"):("N");
			$SysAdmin=isset($_POST["SysAdmin"])?("Y"):("N");
			$ResultReader=isset($_POST["ResultReader"])?("Y"):("N");
			$USPass=isset($_POST["USPass"])?(strval($_POST["USPass"])):("");
			if($ID_TE>0)
			{
				$obj->ChangeTeacher($ID_TE, $TEName, $GroupCreator, $TestCreator, $GroupAdmin, $TestAdmin, $SysAdmin, $ResultReader);
			}
			else if($ID_TE==0)//If add new teacher
			{
				$obj->AddTeacher($TEName, $GroupCreator, $TestCreator, $GroupAdmin, $TestAdmin, $SysAdmin, $ResultReader, $USPass);
			}
			
		}
	}
?>