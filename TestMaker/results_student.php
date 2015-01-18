<?php
include "../inc/student.inc.php";
$obj=new CStudent();
$ID_ST=empty($_GET["ID_ST"])?(0):($_GET["ID_ST"]);
$ID_ST=intval($ID_ST);
if(!$obj->IsLogin()||!$obj->GetInfoStudent($ID_ST)||!$obj->CanUseStudent($ID_ST))
{
	header("header:index.php");
}
else
{		
	$obj->PreparePageMenu();
	$obj->tpl->set_file("results_student","results_student.html");	
	$obj->tpl->set_block("results_student","result_row","RESULTS_ROWS");
	$obj->tpl->set_var("RESULTS_ROWS","");	
	//$obj->tpl->set_block("result_row","log_row","LOG_ROW");
	//$obj->tpl->set_block("result_row","no_log_row","NO_LOG_ROW");
	//$obj->tpl->set_var("LOG_ROW","");
	//$obj->tpl->set_var("NO_LOG_ROW","");	
	$obj->tpl->set_var(	array(
						"StName"=>$obj->STName,
						"STUDENTS_ROWS"=>"",
						"ID_GR"=>$obj->ID_GR
						));
	if($obj->CanAdminGroup($obj->ID_GR))
	{
		$sql = sprintf("SELECT results.*, tests.TestName, 'Y' AS CanUse
						FROM results, tests 
						WHERE results.ID_ST=%d AND results.ID_TEST=tests.ID_TEST ORDER BY TestName;",
						$ID_ST);
	}
	else
	{		
		$sql = sprintf("SELECT results.*, tests.TestName, test_priv.ID_TEST AS CanUse  
						FROM results, tests LEFT JOIN test_priv ON(results.ID_TEST = test_priv.ID_TEST AND test_priv.ID_TE = %d)
						WHERE results.ID_ST=%d AND results.ID_TEST=tests.ID_TEST ORDER BY TestName;",
						$obj->GetID_TE(),
						$ID_ST);
	}
	$obj->query($sql);
	$num=0;	
	$tmp_obj=new CTestSys();
	
	$obj->tpl->set_block("result_row","can't_del_result_row","CAN'T_DEL_RESULT_ROW");	
	$obj->tpl->set_block("can't_del_result_row","can't_log_row","CAN'T_LOG_ROW");
	$obj->tpl->set_block("can't_del_result_row","can't_no_log_row","CAN'T_NO_LOG_ROW");	
	
	$obj->tpl->set_block("result_row","can_del_result_row","CAN_DEL_RESULT_ROW");	
	$obj->tpl->set_block("can_del_result_row","can_log_row","CAN_LOG_ROW");
	$obj->tpl->set_block("can_del_result_row","can_no_log_row","CAN_NO_LOG_ROW");
	
	$obj->tpl->set_var(array("CAN'T_DEL_RESULT_ROW"=>"",
							"CAN_DEL_RESULT_ROW"=>"",
							"CAN'T_LOG_ROW"=>"",
							"CAN'T_NO_LOG_ROW"=>"",
							"CAN_LOG_ROW"=>"",
							"CAN_NO_LOG_ROW"=>""
								));
	while($obj->next_record())
	{
		$obj->tpl->set_var(
					array(
						"NUM"=>++$num,
						"TestName"=>$obj->f("TestName"),
						"Result"=>$obj->f("Result"),
						"FDate"=>$obj->f("FDate"),
						"ID_RE"=>$obj->f("ID_RE")
						)
				);
		$tmp_obj->query("SELECT count(*) AS C from results_log WHERE ID_RE=".$obj->f("ID_RE"));
		$tmp_obj->next_record();
		
		//echo $obj->f("CanUse")."<br />";
		
		if($obj->f("CanUse")=='Y')
		{
			$LOG_ROW = "CAN_LOG_ROW";
			$log_row = "can_log_row";
			$no_log_row = "can_no_log_row";
			$del_result_row = "can_del_result_row";
		}
		else 
		{
			$LOG_ROW = "CAN'T_LOG_ROW";
			$log_row = "can't_log_row";
			$no_log_row = "can't_no_log_row";
			$del_result_row = "can't_del_result_row";
		}
		if($tmp_obj->f("C")>0)
		{
			$obj->tpl->parse($LOG_ROW,$log_row);
		}
		else
		{
			$obj->tpl->parse($LOG_ROW,$no_log_row);
		}
		$obj->tpl->parse("CAN_DEL_RESULT_ROW",$del_result_row);
		
		$obj->tpl->parse("RESULTS_ROWS","result_row",true);
	}	
	$obj->tpl->parse("CONTENT","results_student");
	$obj->tpl->parse("OUT","common");
	$obj->tpl->p("OUT");
}
?>
 