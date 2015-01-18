<?php 
/////////////////////////
// Class for Teachers table
// by Serg Kostiuk 17 11 2004
/////////////////////////////
include "testmaker.inc.php";
class CTeacher extends CTestMaker 
{
	var $ID_TE = 0;
	var $TEName = "";
	var $GroupCreator = "";
	var $TestCreator = "";
	var $GroupAdmin = "";
	var $TestAdmin = "";
	var $SysAdmin = "";
	var $ResultReader = "";
	function AddTeacher($TEName, $GroupCreator, $TestCreator, $GroupAdmin, $TestAdmin, $SysAdmin, $ResultReader, $USPass)
	{
		if(!$this->IsSysAdmin())
		{
    		return false;//If not user
		}
		$TEName=$this->PrepareString($TEName);
		if(strlen($TEName)==0)
		{
			return false;
		}
		$USPass=$this->PreparePass($USPass);
		$sql=sprintf("insert into teachers (TEName, GroupCreator, TestCreator, GroupAdmin, TestAdmin, SysAdmin, ResultReader, USPass) values('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s');",  
								$TEName, $GroupCreator, 
								$TestCreator, $GroupAdmin, $TestAdmin, $SysAdmin, $ResultReader, $USPass);		
		return $this->query($sql);		
	}	
	function ResetTeacherPass($ID_TE,$USPass)
	{
		if(!$this->IsSysAdmin())
		{
			return false;
		}
		$USPass=$this->PreparePass($USPass);		
		$sql = sprintf("update teachers set USPass='%s' WHERE ID_TE=%d", $USPass, $ID_TE);
		return $this->query($sql);
	}	
	function ChangeTeacher($id, $TEName, $GroupCreator, $TestCreator, $GroupAdmin, $TestAdmin, $SysAdmin, $ResultReader)
	{
		if(!$this->IsSysAdmin())
		{
			return false;//If not user
		}
		$TEName=$this->PrepareString($TEName);
		if(strlen($TEName)==0)
		{
			return false;
		}
		$sql = sprintf("UPDATE teachers SET TEName = '%s', GroupCreator = '%s', TestCreator='%s', GroupAdmin='%s', TestAdmin='%s', SysAdmin='%s', ResultReader='%s' WHERE ID_TE = %d;",
						$TEName, $GroupCreator, $TestCreator, $GroupAdmin, $TestAdmin, $SysAdmin, $ResultReader, $id);
		return $this->query($sql);		
	}
	function DeleteTeacher($ID_TE)
	{
		if(!$this->IsSysAdmin())
		{
			return false;//If not user
		}
		$this->lock(array("test_priv","group_priv","teachers"));
		$this->query("DELETE FROM test_priv WHERE ID_TE='$ID_TE';");
		$this->query("DELETE FROM group_priv WHERE ID_TE='$ID_TE';");
		$this->query("DELETE FROM teachers WHERE ID_TE='$ID_TE';");
		$this->unlock();
		return true;
	}
	function GetInfoTeacher($id)
	{		
  		$sql  = sprintf("select * from teachers where ID_TE = %d;", $id);
		$this->query($sql);
		if($this->next_record())
		{
        		$this->ID_TE = $id;
			$this->TEName=$this->f("TEName");
			$this->GroupCreator=$this->f("GroupCreator");
			$this->TestCreator=$this->f("TestCreator");
			$this->GroupAdmin=$this->f("GroupAdmin");
			$this->TestAdmin=$this->f("TestAdmin");
			$this->SysAdmin=$this->f("SysAdmin");
			$this->ResultReader=$this->f("ResultReader");
			return true;
		}
		$this->ID_TE = 0;
		$this->TEName="";
		$this->GroupCreator="";
		$this->TestCreator="";
		$this->GroupAdmin="";
		$this->TestAdmin="";
		$this->SysAdmin="";
		$this->ResultReader="";
		return false;
	}	
}
?>