<?php
	include "../inc/teacher.inc.php";
	
	$ID_TE = isset($_POST['ID_TE'])?intval($_POST['ID_TE']):"";
	$USPass = isset($_POST['USPass'])?strval($_POST['USPass']):"";
	$USPass_2 = isset($_POST['USPass_2'])?strval($_POST['USPass_2']):"";
	
	$obj=new CTeacher();
	if(!$obj->IsLogin()||strcmp($USPass,$USPass_2)!=0)
	{
		header("location:index.php");	
	}
	else if($ID_TE==0)
	{
		$OLDPass = isset($_POST['OLDPass'])?strval($_POST['OLDPass']):"";
		$obj->ChangePass($OLDPass, $USPass);
		header("location:index.php");
	}
	else if($obj->IsSysAdmin())
	{
		$obj->ResetTeacherPass($ID_TE,$USPass);
		header("location:teachers.php");
	}
?>