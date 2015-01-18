<?php
	include "../inc/student.inc.php";	
	$user = new CStudent();   	
    if(!$user->IsLogin()) 
    {
    	header("location:index.php");
    }
    else
    {    	
    	$Action=empty($_GET["Action"])?(""):($_GET["Action"]);
    	if(strcmp($Action,"DEL")==0)
    	{
    		$ID_GR=empty($_GET["ID_GR"])?(0):($_GET["ID_GR"]);
    		$ID_ST=empty($_GET["ID_ST"])?(0):($_GET["ID_ST"]);
    		$ID_ST=intval($ID_ST);    		
    		$user->DeleteStudent($ID_ST);
    		header ("Location:students.php?ID_GR=$ID_GR");
	    }    
		else
	    {		    	
	    	$ID_GR=empty($_POST["ID_GR"])?(0):($_POST["ID_GR"]);
	    	$s_check=!empty($_POST["s_check"]);
			$p_check=!empty($_POST["p_check"]);
			$ID_ST=empty($_POST["ID_ST"])?(0):($_POST["ID_ST"]);
	    	$STName=empty($_POST["STName"])?(""):($_POST["STName"]);
	    	$STPass=empty($_POST["STPass"])?(""):($_POST["STPass"]);
	    	$STPassConf=empty($_POST["STPassConf"])?(""):($_POST["STPassConf"]);
	    	$ID_ST=intval($ID_ST);
	    	$IsStudentExist=false;
	    	if($ID_ST == 0)  
	    	{	    		
	    		$ID_GR=intval($ID_GR);
	    		if(strcmp($STPassConf,$STPass)==0)
	    		{
	    			$ID_ST_EXIST=$user->GetID_ST($STName);
	    			if(!$ID_ST_EXIST)
	    			{
		        		$user->AddStudent($ID_GR,$STName,$STPass);
		        		//header ("Location:students.php?ID_GR=$ID_GR");
	    			}
		        	else
		        		$IsStudentExist=true;
		        		//header("Location:student_add_change.php?ID_GR=$ID_GR&ID_ST=$ID_ST&ID_ST_EXIST=$ID_ST_EXIST");
	    		}
	    	}
	    	else if($s_check && $p_check)
			{
				if(strcmp($STPassConf,$STPass)==0)
	    		{
	    			$ID_ST_EXIST=$user->GetID_ST($STName);
	    			if(!$ID_ST_EXIST||$ID_ST_EXIST==$ID_ST)
	    			{
						$user->ChangeStudent($ID_ST,$STName,$STPass);						
	    			}
					else
						$IsStudentExist=true;						
	    		}
			}
			else if($p_check)
			{				
				if(strcmp($STPassConf,$STPass)==0)
	    		{    			
					$user->ChangeStudent3($ID_ST,$STPass);					
	    		}	    		
			}		
			else if ($s_check)		
			{
				$ID_ST_EXIST=$user->GetID_ST($STName);
	    		if(!$ID_ST_EXIST||$ID_ST_EXIST==$ID_ST)
	    		{
					$user->ChangeStudent2($ID_ST,$STName);
				}
				else
				{
					$IsStudentExist=true;
				}
			}
			if($IsStudentExist)
				header("Location:student_add_change.php?ID_GR=$ID_GR&ID_ST=$ID_ST&ID_ST_EXIST=$ID_ST_EXIST");
			else 
				header("Location:students.php?ID_GR=$ID_GR");
	    }	    
    }   
?>