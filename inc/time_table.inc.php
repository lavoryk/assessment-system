<?php 
include "testmaker.inc.php";
class CTimeTable extends CTestMaker 
{
	var $ID_TEST = 0;
	var $ID_GR = 0;
	var $S_Date;
	var $F_Date;
	var $WriteLog = 'N';
	function CTimeTable()
	{		
		$this->S_Date = Date("Y-m-d");
		$this->F_Date = Date("Y-m-d");		
		$this->CTestMaker();
	}	
	function AddTimeTable($ID_TEST,$ID_GR,$WriteLog,$S_Date,$F_Date)
	{
		if($this->CanUseGroup($ID_GR)&&$this->CanUseTest($ID_TEST))
		{
			$sql = sprintf("INSERT INTO time_table (ID_TEST,ID_GR,WriteLog,S_DATE,F_DATE) VALUES(%d, %d,'%s','%s','%s');",
						$ID_TEST,$ID_GR,$WriteLog,$S_Date,$F_Date);
			return $this->query($sql);
		}
		$this->LogOut();
		return false;
	}
	function DeleteTimeTable($ID_TEST,$ID_GR)
	{
		if($this->CanChangeTimeTable($ID_TEST,$ID_GR))
		{
			$sql = sprintf("DELETE FROM time_table WHERE ID_GR='%d' AND ID_TEST='%d';",$ID_GR,$ID_TEST);
			return $this->query($sql);
		}
		$this->LogOut();
		return false; 
	}	
	function UpdateTimeTable($ID_TEST,$ID_GR,$PREV_ID_GR,$WriteLog,$S_DATE,$F_DATE)
	{
		if($this->CanChangeTimeTable($ID_TEST,$ID_GR))
		{
			$sql = sprintf("UPDATE time_table  set WriteLog='%s',S_DATE='%s',F_DATE='%s',ID_GR=%d  Where ID_GR=%d AND ID_TEST=%d;", 
						$WriteLog,$S_DATE,$F_DATE,$ID_GR,$PREV_ID_GR,$ID_TEST);
        	return $this->query($sql);
		}
		$this->LogOut();
		return false;
	}
	
	function GetInfoTimeTable($ID_TEST,$ID_GR)
	{	    
		$this->query("SELECT * FROM time_table WHERE ID_GR = '$ID_GR' AND ID_TEST = '$ID_TEST';");
		if($this->next_record())
        	{
   			$this->ID_TEST=$ID_TEST;
			$this->ID_GR=$this->f("ID_GR");
			$this->S_Date=$this->f("S_Date");
			$this->F_Date=$this->f("F_Date");
			return true;
		}
		$this->ID_TEST = 0;
		$this->ID_GR = 0;
		$this->S_Date = Date("Y-m-d");
		$this->F_Date = Date("Y-m-d");
		return false;	
	}
	function CanViewTimeTable($ID_TEST)
	{		
		return $this->CanUseTest($ID_TEST);
	}
	function CanChangeTimeTable($ID_TEST,$ID_GR)
	{
		if( $this->CanAdminTest($ID_TEST)||($this->CanUseGroup($ID_GR)&&$this->CanUseTest($ID_TEST)) )
		{
			return true;
		}
		return false;	
	}	
}
?>