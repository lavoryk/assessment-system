<?php 
include "testmaker.inc.php";
define("ERROR_GROUP_ALLREADY_EXISTS",1);
class CGroup extends CTestMaker 
{
	var $ID_GR = 0;
	var $GrName = "";	
 	function AddGroup($GrName)
	{
		if($this->IsGroupCreator())
		{
			$GrName=$this->PrepareString($GrName);
			$res=false;
			if(strlen($GrName)!=0)
			{	
				if(USE_TRANSACTION)
					$this->query("START TRANSACTION;");
				else
					$this->lock(array("groups","group_priv","teachers"));
	 			$Sql=sprintf("Insert into groups(GrName) VALUES ('%s');", $GrName);
		 		$res=$this->query($Sql);		 		
				if(!$this->IsGroupAdmin())
				{
					$this->query("SELECT MAX(ID_GR) FROM groups;");
		 			$this->next_record();
		 			$ID_GR=$this->f(0);
					$Sql=sprintf("Insert into group_priv (ID_GR,ID_TE,CanAdmin,CanChange) VALUES (%d,%d,'Y','Y');",
						$ID_GR,
						$this->GetID_TE());
			 		$res=$this->query($Sql)&&$res;
				}
				if(USE_TRANSACTION)
					$this->query("COMMIT;");
				else
					$this->unlock();
			}
			return $res;
		}
		else
		{
	 		return false;
	 		$this->LogOut();
		}
	}
 	function ChangeGroup($ID_GR,$GrName)
 	{  		
		if($this->CanAdminGroup($ID_GR))
		{
			$GrName=$this->PrepareString($GrName);
			if(strlen($GrName)!=0)
			{				
				return $this->query("UPDATE groups SET GrName = '$GrName' WHERE ID_GR = $ID_GR;");				
			}
		}
		return false; 
	}	
	function DeleteGroup($ID_GR)
	{
		if($this->CanAdminGroup($ID_GR))
		{	
			if(USE_TRANSACTION)			
				$this->query("START TRANSACTION;");			
			else
			{
	 			$this->lock(
	 				array(
	 					"groups",
	 					"group_priv",
	 					"time_table",
	 					"students",
	 					"results",
	 					"results_log",
	 					"results_log_answers",
	 					"results_log_answers3",
						"results_log_answers45"));
			}
				
			$this->query("	DELETE FROM results_log_answers USING results_log_answers,results_log,results,students
							WHERE
								students.ID_GR=$ID_GR AND
								students.ID_ST=results.ID_ST AND 
								results.ID_RE=results_log.ID_RE AND
								results_log.ID_RE_LOG=results_log_answers.ID_RE_LOG;");
			$this->query("	DELETE FROM results_log_answers3 USING results_log_answers3,results_log,results,students
							WHERE
								students.ID_GR=$ID_GR AND
								students.ID_ST=results.ID_ST AND 
								results.ID_RE=results_log.ID_RE AND
								results_log.ID_RE_LOG=results_log_answers3.ID_RE_LOG;");
			$this->query("	DELETE FROM results_log_answers45 USING results_log_answers45,results_log,results,students
							WHERE
								students.ID_GR=$ID_GR AND
								students.ID_ST=results.ID_ST AND 
								results.ID_RE=results_log.ID_RE AND
								results_log.ID_RE_LOG=results_log_answers45.ID_RE_LOG;");
			$this->query("	DELETE FROM results_log USING results_log,results,students
							WHERE
								students.ID_GR=$ID_GR AND
								students.ID_ST=results.ID_ST AND 
								results.ID_RE=results_log.ID_RE;");
			$this->query("	DELETE FROM results USING results,students
							WHERE
								students.ID_GR=$ID_GR AND
								students.ID_ST=results.ID_ST");				
	 		$this->query("DELETE FROM time_table WHERE ID_GR = '$ID_GR';");
	 		$this->query("DELETE FROM group_priv WHERE ID_GR = '$ID_GR';");
	 		$this->query("DELETE FROM students WHERE ID_GR = '$ID_GR';");
	 		$this->query("DELETE FROM groups WHERE ID_GR = '$ID_GR';");
	 		if(USE_TRANSACTION)
				$this->query("COMMIT;");
			else
	 			$this->unlock();
	 		return true;
		}
		return false;		
	}
	function GetInfoGroup($ID_GR)
 	{ 		
 		$this->query("SELECT * FROM groups WHERE ID_GR = '$ID_GR';");
		if($this->next_record())
		{
			$this->ID_GR = $ID_GR;
			$this->GrName = $this->f("GrName");
			return true;
		}
		$this->ID_GR = 0;
		$this->GrName = "";
		return false;
 	}
 	/**
 	 * якщо знаходить групу з ≥м'€м $GrName
 	 * то повертаЇ ID_GR. ≤накше false
 	 * 
 	 * @param string $GrName
 	 * @return int
 	 */
 	function GetID_GR($GrName)
 	{
 		$GrName=$this->PrepareString($GrName);
		if(strlen($GrName)!=0)
		{
			$this->query("SELECT * FROM groups WHERE GrName LIKE '$GrName'");
        	if($this->next_record())
        	{
        		return intval($this->f("ID_GR"));
			}
		}
		return -1;
 	}
}
?>
