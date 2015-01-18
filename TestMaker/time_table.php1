<?php
include "../inc/testmaker.inc.php";
$obj = new CTestMaker();
$ID_TEST=empty($_GET["ID_TEST"]) ? (0) : ($_GET["ID_TEST"]);
$ID_TEST=intval($ID_TEST);
$ID_GR=empty($_GET["ID_GR"]) ? (0) : ($_GET["ID_GR"]);
$ID_GR=intval($ID_GR);
if(!$obj->IsLogin() || !$obj->CanUseTest($ID_TEST))
	//($ID_GR>0 && !$obj->CanUseGroup($ID_GR) && !$obj->CanAdminTest($ID_TEST)))
{
	header("location:index.php");
}
else
{		
	$obj->PreparePageMenu();	
	$obj->query("SELECT TestName FROM tests WHERE ID_TEST=$ID_TEST");	
	$obj->next_record();	
	$obj->tpl->set_var("TestName",$obj->f("TestName"));
	$obj->tpl->set_file("time_table","time_table.html");
	$obj->tpl->set_block("time_table","can_change_time_row","TIME_ROWS");
	
	$obj->tpl->set_var("TIME_ROWS","");
		
	$obj->tpl->set_block("time_table","can't_change_time_row","CAN'T_CHANGE_TIME_ROWS");
	$obj->tpl->set_var("CAN'T_CHANGE_TIME_ROWS","");
		
	$obj->tpl->set_block("time_table","group_row","GROUPS_ROWS");
	$obj->tpl->set_block("time_table","time_row_add_edit","TIME_ROW_ADD_EDIT");
	$obj->tpl->set_var("TIME_ROW_ADD_EDIT","");
		
	$obj->tpl->set_var("ID_TEST",$ID_TEST);	

	if($obj->CanAdminTest($ID_TEST))
	{
		$sql=sprintf("	SELECT time_table.*, groups.GrName, 'Y' AS CanUse 
						FROM time_table, groups
						WHERE groups.ID_GR=time_table.ID_GR AND ID_TEST=%d
						ORDER BY GrName;",
					$ID_TEST);
	}
	else if($obj->IsGroupAdmin())
	{	
		$sql=sprintf("	SELECT time_table.*, groups.GrName, 'Y' AS CanUse
						FROM time_table, groups						
						WHERE groups.ID_GR=time_table.ID_GR AND ID_TEST=%d
						ORDER BY GrName;",					
						$ID_TEST);
	}
	else
	{
		// Хакерський Прийомчик ....						..........................
		$sql=sprintf("	SELECT time_table.*, groups.GrName, group_priv.ID_GR AS CanUse
						FROM time_table, groups
						LEFT JOIN group_priv ON(time_table.ID_GR = group_priv.ID_GR AND group_priv.ID_TE = %d)
						WHERE groups.ID_GR=time_table.ID_GR AND ID_TEST=%d
						ORDER BY GrName;",
					$obj->GetID_TE(),
					$ID_TEST);
	}
	$obj->query($sql);		
	$num=0;
	while($obj->next_record())
	{
		$num++;
		$obj->tpl->set_var(array(
							"NUM"=>$num,
							"ID_TEST"=>$ID_TEST,
							"ID_GR"=>$obj->f("ID_GR"),
							"GrName"=>$obj->f("GrName"),
							"S_DATE"=>$obj->f("S_Date"),
							"F_DATE"=>$obj->f("F_Date")
						));
		if($ID_GR==$obj->f("ID_GR"))
		{
			$obj->tpl->set_var("PREV_ID_GR",$ID_GR);
			if($obj->f("WriteLog")=='Y')
			{
				$obj->tpl->set_var("CHECKED_WRITELOG","checked");
			}
			else
			{
				$obj->tpl->set_var("CHECKED_WRITELOG","");
			}
			$obj->tpl->parse("TIME_ROWS","time_row_add_edit",true);
		}
		else
		{
			$obj->tpl->set_var("WriteLog",$obj->f("WriteLog"));
			if($obj->f("CanUse"))			
				$obj->tpl->parse("TIME_ROWS","can_change_time_row",true);
			else
				$obj->tpl->parse("TIME_ROWS","can't_change_time_row",true);
		}
	}
	if($ID_GR==-1)
	{		
		$num++;
		$obj->tpl->set_var(array(
							"NUM"=>$num,
							"ID_TEST"=>$ID_TEST,
							"ID_GR"=>0,
							"PREV_ID_GR"=>0,
							"GrName"=>"",
							"CHECKED_WRITELOG"=>"",
							"S_DATE"=>date("Y-m-d"),
							"F_DATE"=>date("Y-m-d")
						));
		$obj->tpl->parse("TIME_ROWS","time_row_add_edit",true);
	}
	
	if($ID_GR!=0)	
	{	
		if($obj->IsGroupAdmin())
		{
			$sql = sprintf("
						SELECT groups.ID_GR, GrName
						FROM groups
						LEFT JOIN time_table ON (groups.ID_GR=time_table.ID_GR AND time_table.ID_TEST=%d) 
						WHERE time_table.ID_GR IS NULL							
						UNION
						SELECT groups.ID_GR,GrName
						FROM groups WHERE groups.ID_GR=%d
						ORDER BY GrName;",
						$ID_TEST, $ID_GR);
		}
		else 
		{			
			$sql = sprintf("
						SELECT groups.ID_GR, GrName
						FROM groups, group_priv
						LEFT JOIN time_table ON (groups.ID_GR=time_table.ID_GR AND time_table.ID_TEST=%d) 
						WHERE group_priv.ID_TE = %d AND 
							group_priv.ID_GR=groups.ID_GR AND 
							time_table.ID_GR IS NULL
						UNION
						SELECT groups.ID_GR,GrName
						FROM groups WHERE groups.ID_GR=%d
						ORDER BY GrName;",
						$ID_TEST, $obj->GetID_TE(), $ID_GR);			
		}
		$obj->query($sql);
		while($obj->next_record())
		{
			$obj->tpl->set_var(array("ID_GR"=>$obj->f("ID_GR"),
							"GrName"=>$obj->f("GrName")
							));			
			if($obj->f("ID_GR")==$ID_GR) 
			{
				$obj->tpl->set_var("SELECTED"," selected");
			}		
			else 
			{
				$obj->tpl->set_var("SELECTED","");
			}
			$obj->tpl->parse("GROUPS_ROWS","group_row",true);
		}
	}

	$obj->tpl->parse("CONTENT","time_table");
	$obj->tpl->parse("OUT","common");
	$obj->tpl->p("OUT");
}
?>