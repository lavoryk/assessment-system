<?php
include "../inc/tester.inc.php";
if(empty($_SESSION["T_S_Time"]))
{
	$StName=empty($_POST["STName"])?(""):($_POST["STName"]);
	$StPass=empty($_POST["STPass"])?(""):($_POST["STPass"]);
	$tpl = new CTemplateTester();
	$tester=new CTester();
	if($tester->CheckLogin($StName,$StPass))
	{	
		$tpl->assign("incorrectnameorpass", false);	
		$tester->GetStudentInfoEx();
		$tpl->assign("STName", $tester->STName);
		$tpl->assign("GrName", $tester->GrName);	
		$sql="SELECT tests.* from tests, time_table WHERE  IsBlock='%s' AND tests.ID_TEST=time_table.ID_TEST AND time_table.ID_GR=".$tester->ID_GR." ORDER BY tests.TestName";
		$tester->query(sprintf($sql,'N'));
		$index=1;
		while($tester->next_record())
		{
			$tpl->append("IND1", 0);
			$tpl->append("IND2", $index);		
			$tpl->append("ID_TEST", $tester->f("ID_TEST"));
			$tpl->append("TestName", $tester->f("TestName"));		
			$index++;
		}
		$tester->query(sprintf($sql,'Y'));
		$index=1;
		while($tester->next_record())
		{
			$tpl->append("IND1", 1);
			$tpl->append("IND2", $index);		
			$tpl->append("ID_TEST", $tester->f("ID_TEST"));
			$tpl->append("TestName", $tester->f("TestName"));		
			$index++;
		}	
	}
	else
	{
		$tpl->assign("incorrectnameorpass", true);
	}
	$tpl->display("select.tpl");
}
else
{
	header("location:main.php");
}
?>