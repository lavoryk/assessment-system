<?php
include "../inc/testmaker.inc.php";
$obj=new CTestMaker();
$ID_GR=empty($_GET["ID_GR"])?(0):($_GET["ID_GR"]);
$ID_GR=intval($ID_GR);
if(!$obj->IsLogin() || ($ID_GR!=0&&!$obj->CanUseGroup($ID_GR)) )
{
	header("location:index.php");
}
else 
{	
	$ID_TEST=empty($_GET["ID_TEST"])?(0):($_GET["ID_TEST"]);
	$ID_TEST=intval($ID_TEST);
	$obj->PreparePageMenu();
	$obj->tpl->set_file("results","results.html");
	$obj->tpl->set_block("results","group_row","GROUPS_ROWS");
	$obj->tpl->set_block("results","test_row","TEST_ROWS");
	$obj->tpl->set_block("results","student_row","STUDENTS_ROWS");	
	$obj->tpl->set_var("STUDENTS_ROWS","");
	if($obj->IsGroupAdmin())
	{
		$query = "SELECT groups.*, 'Y' AS 'CanAdmin', 'Y' AS 'CanChange' FROM groups ORDER BY GrName;";
	}
	else
	{
		$query = sprintf("	SELECT groups.*, group_priv.CanAdmin, group_priv.CanChange 
							FROM groups,teachers,group_priv
							WHERE 	groups.ID_GR=group_priv.ID_GR AND 
									group_priv.ID_TE=teachers.ID_TE AND 
									teachers.ID_TE=%d
							ORDER BY GrName;",
				$obj->GetID_TE());
	}
	$obj->query($query);
	while($obj->next_record())
	{
		$obj->tpl->set_var(array(
						"ID_GR"=>$obj->f("ID_GR"),
						"GrName"=>$obj->f("GrName")
							)
						);
		if($ID_GR==$obj->f("ID_GR"))
			$obj->tpl->set_var("G_SELECT","selected");
		else
			$obj->tpl->set_var("G_SELECT","");
		$obj->tpl->parse("GROUPS_ROWS","group_row",true);
	}	
	$obj->query("	SELECT DISTINCT tests.* 
					FROM students,tests,results 
					WHERE 	students.ID_GR=$ID_GR AND 
							students.ID_ST=results.ID_ST AND 
							results.ID_TEST=tests.ID_TEST
					ORDER BY IsBlock, TestName;");
	while($obj->next_record())
	{
		$obj->tpl->set_var(array(
						"ID_TEST"=>$obj->f("ID_TEST"),
						"TestName"=>$obj->f("TestName")
						)
				);
		if($ID_TEST==$obj->f("ID_TEST"))
			$obj->tpl->set_var("T_SELECT","selected");
		else
			$obj->tpl->set_var("T_SELECT","");
		$obj->tpl->parse("TEST_ROWS","test_row",true);
	}	
	if($obj->CanUseTest($ID_TEST) || $obj->CanAdminGroup($ID_GR))//CanUse на групу і так маємо
	{		
		$obj->tpl->set_block("student_row","can't_del_result_row","CAN'T_DEL_RESULT_ROW");	
		$obj->tpl->set_var("CAN'T_DEL_RESULT_ROW","");
		$obj->tpl->set_block("student_row","log_row","LOG_ROW");
		$obj->tpl->set_block("student_row","no_log_row","NO_LOG_ROW");	
	}
	else 
	{
		$obj->tpl->set_block("student_row","can_del_result_row","CAN_DEL_RESULT_ROW");	
		$obj->tpl->set_var("CAN_DEL_RESULT_ROW","");		
		$obj->tpl->set_block("student_row","log_row","LOG_ROW");
		$obj->tpl->set_block("student_row","no_log_row","NO_LOG_ROW");
	}
	$obj->tpl->set_var("NO_LOG_ROW","");
	$obj->query("SELECT results.*,students.STName FROM results,students WHERE students.ID_GR=$ID_GR AND students.ID_ST=results.ID_ST AND results.ID_TEST=$ID_TEST ORDER BY STName;");
	$num=0;
	$tmp_obj=new CTestSys();
	
	while($obj->next_record())
	{
		$obj->tpl->set_var(
					array(
						"NUM"=>++$num,
						"STName"=>$obj->f("STName"),
						"Result"=>$obj->f("Result"),
						"FDate"=>$obj->f("FDate"),
						"ID_RE"=>$obj->f("ID_RE")						
						)
				);
		$tmp_obj->query("SELECT count(*) AS C from results_log WHERE ID_RE=".$obj->f("ID_RE"));
		$tmp_obj->next_record();
		if($tmp_obj->f("C")>0)
		{
			
			$obj->tpl->parse("LOG_ROW","log_row");
		}
		else
		{
			$obj->tpl->parse("LOG_ROW","no_log_row");			
		}
		$obj->tpl->parse("STUDENTS_ROWS","student_row",true);
	}	
	$obj->tpl->parse("CONTENT","results");
	$obj->tpl->parse("OUT","common");
	$obj->tpl->p("OUT");
}
?>