<?php
include "../inc/student.inc.php";
$ID_ST=empty($_GET["ID_ST"])?(0):($_GET["ID_ST"]);  
$ID_GR=empty($_GET["ID_GR"])?($ID_GR=0):($_GET["ID_GR"]);  
$ID_ST=intval($ID_ST);
$ID_GR=intval($ID_GR);	
$obj = new CStudent();
if(!$obj->IsLogin()||($ID_ST==0 &&!$obj->CanChangeGroup($ID_GR)) ||($ID_ST!=0 &&!$obj->CanUseStudent($ID_ST)))
{
	header("location:index.php");
	$obj->LogOut();
}
else
{
    if($ID_ST == 0)    
	{
    	$STName= "";
	}    
    else
    {
        if($obj->GetInfoStudent($ID_ST))
		{				
        	$STName= $obj->STName;        	
		}
        else
        {
			$STName= "" ;			
	        $ID_ST = 0;
        }
    }
    $STPass= "";    	
	$obj->PreparePageMenu();
	$obj->tpl->set_file("student_add_change", "student_add_change.html");
	$obj->tpl->set_var(array(
					"STName"=>$STName,
					"STPass"=>"",
					"ID_ST"=>$ID_ST,
					"ID_GR"=>$ID_GR	)
						);
	$obj->tpl->set_block("student_add_change","exist_student_row","EXIST_STUDENT_ROW");
	$obj->tpl->set_var("EXIST_STUDENT_ROW","");
	if($ID_ST==0)
	{
		$obj->tpl->set_var("s_check","checked");
		$obj->tpl->set_var("s_dis","disabled");
		$obj->tpl->set_var("p_check","checked");
		$obj->tpl->set_var("p_dis","disabled");
		$obj->tpl->set_var("STNameDisable","");		
	}
	else if(isset($_GET["Action"])&&strcmp($_GET["Action"],"CHANGE_PASS")==0)
	{
		$obj->tpl->set_var("s_check","");
		$obj->tpl->set_var("s_dis","disabled");
		$obj->tpl->set_var("p_check","checked");
		$obj->tpl->set_var("p_dis","");
		$obj->tpl->set_var("STNameDisable","disabled");
	}
	else
	{
		if($ID_ST !=0 && $obj->CanChangeStudent($ID_ST))
		{
			$dis = "";
		}
		else
		{
			$dis = "disabled";
		}
		$obj->tpl->set_var("s_check",$dis);
		$obj->tpl->set_var("s_dis",$dis);
		$obj->tpl->set_var("p_check",$dis);
		$obj->tpl->set_var("p_dis",$dis);
		$obj->tpl->set_var("STNameDisable",$dis);
		unset($dis);
	}
	if(!empty($_GET["ID_ST_EXIST"]))
	{
		$ID_ST_EXIST=intval($_GET["ID_ST_EXIST"]);
		$obj->query("SELECT STName,GrName FROM students, groups WHERE students.ID_ST=$ID_ST_EXIST AND students.ID_GR=groups.ID_GR");
		if($obj->next_record())
		{
			$obj->tpl->set_var(array(						
					"ExistSTName"=>$obj->f("STName"),
					"ExistGrName"=>$obj->f("GrName"),
					));
			$obj->tpl->parse("EXIST_STUDENT_ROW","exist_student_row");
		}	
	}
	$obj->tpl->parse("STUDENT_ROWS","add_new_student",true);					
	$obj->tpl->parse("CONTENT","student_add_change");
	$obj->tpl->parse("OUT","common");
	$obj->tpl->p("OUT");
}
?>
