<?php 
include "group.inc.php";
class CStudent extends CGroup 
{
	var $ID_ST = 0;
	var $ID_GR = 0;
	var $STName = "";
		
	function AddStudent($ID_GR,$STName,$STPass)
	{
		if($this->CanAdminGroup($ID_GR))
		{
			$STName=$this->PrepareString($STName);
			if(strlen($STName)==0)
			{
				return false;
			}		
			$STPass=$this->PreparePass($STPass);
			$sql=sprintf("Insert into students(ID_GR,STName,STPass) VALUES(%d,'%s','%s')",
					$ID_GR,
					$STName,
					$STPass);
			return $this->query($sql);
		}
		else
		{
			$this->LogOut();
			return false;
		}	 
	}
 	function ChangeStudent($ID_ST,$STName,$STPass)
 	{
 		if($this->CanChangeStudent($ID_ST))
 		{
	 		$STName=$this->PrepareString($STName);
			if(strlen($STName)==0)
			{
				return false;
			}
			$STPass=$this->PreparePass($STPass);
			$sql=sprintf("UPDATE students SET STName = '%s',STPass = '%s' WHERE ID_ST = %d;",
							$STName,
							$STPass,
							$ID_ST
							);
			return $this->query($sql);
 		}
 		else
 		{
 			$this->LogOut();
			return false;
 		}
 	}
	function ChangeStudent2($ID_ST,$STName)
 	{
 		if($this->CanChangeStudent($ID_ST))
 		{
	 		$STName=$this->PrepareString($STName);
			if(strlen($STName)==0)
			{
				return false;
			}
	 		$sql=sprintf("UPDATE students SET STName = '%s' WHERE ID_ST = %d;",
							$STName,
							$ID_ST
							);
			return $this->query($sql);
 		}
 		else
 		{
 			$this->LogOut();
			return false;
 		}
 	}
	function ChangeStudent3($ID_ST,$STPass)
 	{ 	
 		if($this->CanUseStudent($ID_ST))
 		{
			$STPass=$this->PreparePass($STPass);
			$sql=sprintf("UPDATE students SET STPass = '%s' WHERE ID_ST = %d;",$STPass,$ID_ST);
			return $this->query($sql);
 		}
		else 
		{ 	
			$this->LogOut();
			return false;
		}
 	} 	
	function DeleteStudent($ID_ST)
	{
		if($this->CanChangeStudent($ID_ST))
 		{
			if(USE_TRANSACTION)
			{
				$this->query("START TRANSACTION;");
			}
			else
			{
				$this->lock(array(	"students",
									"results",
									"results_log",
									"results_log_answers",
									"results_log_answers3",
									"results_log_answers45"));
			}
			$this->query("DELETE FROM results_log_answers USING results_log_answers,results_log,results
							WHERE 	results.ID_ST=$ID_ST AND 
									results.ID_RE=results_log.ID_RE AND
									results_log.ID_RE_LOG=results_log_answers.ID_RE_LOG;");
			$this->query("DELETE FROM results_log_answers3 USING results_log_answers3,results_log,results
							WHERE 	results.ID_ST=$ID_ST AND 
									results.ID_RE=results_log.ID_RE AND
									results_log.ID_RE_LOG=results_log_answers3.ID_RE_LOG;");
			$this->query("DELETE FROM results_log_answers45 USING results_log_answers45,results_log,results
							WHERE 	results.ID_ST=$ID_ST AND 
									results.ID_RE=results_log.ID_RE AND
									results_log.ID_RE_LOG=results_log_answers45.ID_RE_LOG;");
			$this->query("DELETE FROM results_log USING results_log,results
							WHERE 	results.ID_ST=$ID_ST AND 
									results.ID_RE=results_log.ID_RE;");
			$this->query("DELETE FROM results WHERE ID_ST=$ID_ST;");
			$this->query("DELETE FROM students WHERE ID_ST=$ID_ST;");		
			if(USE_TRANSACTION)
				$this->query("COMMIT;");
			else
		 		$this->unlock();
		 	return true;
 		}
 		else 
		{ 	
			$this->LogOut();
			return false;
		} 		
	}
	function GetInfoStudent($ID_ST)
 	{
 		$Sql="SELECT * FROM students WHERE ID_ST = $ID_ST;";
 		$this->query($Sql);
		if($this->next_record())
		{
			$this->ID_ST = $ID_ST;
			$this->ID_GR = $this->f("ID_GR");
			$this->STName = $this->f("STName");        	
			return true;
		}
		$this->ID_ST = 0;
		$this->ID_ST = 0;
		$this->STName = "";	      	
		return false;
	}
	function GetID_ST($StName)
	{
		$StName=$this->PrepareString($StName);
		if(strlen($StName)!=0)
		{
			$this->query("SELECT ID_ST FROM students WHERE StName='$StName';");
			if($this->next_record())
			{
				return $this->f("ID_ST");
			}
		}
		return 0;
	}
	function CanUseStudent($ID_ST)
	{
		$this->query("SELECT ID_GR FROM students WHERE ID_ST='$ID_ST';");
		if($this->next_record())
		{
			return $this->CanUseGroup($this->f("ID_GR"));
		}		
		return false;
	}
	function CanChangeStudent($ID_ST)
	{
		$this->query("SELECT ID_GR FROM students WHERE ID_ST='$ID_ST';");
		if($this->next_record())
		{
			return $this->CanChangeGroup($this->f("ID_GR"));
		}		
		return false;
	}
	function MoveStudent($ID_ST,$ID_GR_SOURCE,$ID_GR_DESTINATION)
	{
		if($this->CanChangeGroup($ID_GR_SOURCE) && $this->CanChangeGroup($ID_GR_DESTINATION))
		{
			if($ID_GR_SOURCE>0&&$ID_GR_DESTINATION>0)
			{
				$this->query("UPDATE students SET ID_GR=$ID_GR_DESTINATION WHERE ID_ST=$ID_ST AND ID_GR=$ID_GR_SOURCE;");
			}
		}
	}
}
?>
