<?php
include "testmaker.inc.php";
class CResult extends CTestMaker
{
	var $ID_RE = 0;
	var $ID_TEST = 0;
	var $ID_GR = 0;
	var $ID_ST = 0;
	var $Result = 0;
	var $StName = "";
	var $GrName = "";
	var $TestName = "";	
	function DeleteResult($ID_RE)
	{
		if(!$this->CanDeleteResult($ID_RE))
		{
			$this->LogOut();
			return false;
		}
		if(USE_TRANSACTION)
		{
			$this->query("START TRANSACTION;");
		}
		else
		{
			$this->lock(
				array(
					"results_log_answers",
					"results_log_answers3",
					"results_log_answers45",
					"results_log",
					"results"));
		}
		$this->query("DELETE FROM results_log_answers3 USING results_log_answers3, results_log
						WHERE results_log.ID_RE=$ID_RE AND
							results_log.ID_RE_LOG=results_log_answers3.ID_RE_LOG;");
		$this->query("DELETE FROM results_log_answers45 USING results_log_answers45, results_log
						WHERE results_log.ID_RE=$ID_RE AND
							results_log.ID_RE_LOG=results_log_answers45.ID_RE_LOG;");		
		$this->query("DELETE FROM results_log_answers USING results_log_answers, results_log
						WHERE results_log.ID_RE=$ID_RE AND
							results_log.ID_RE_LOG=results_log_answers.ID_RE_LOG;");
		$this->query("DELETE FROM results_log WHERE results_log.ID_RE=$ID_RE;");
		$this->query("DELETE FROM results WHERE results.ID_RE=$ID_RE;");
		if(USE_TRANSACTION)
			$this->query("COMMIT;");
		else
			$this->unlock();
		return true;
	}
	function DeleteLog($ID_RE)
	{
		if(!$this->CanDeleteResult($ID_RE))
		{
			$this->LogOut();
			return false;
		}
		if(USE_TRANSACTION)
		{
			$this->query("START TRANSACTION;");
		}
		else
		{
			$this->lock(
				array(
					"results_log_answers",
					"results_log_answers3",
					"results_log_answers45",
					"results_log"));
		}
		$this->query("DELETE FROM results_log_answers3 USING results_log_answers3, results_log
						WHERE results_log.ID_RE=$ID_RE AND
							results_log.ID_RE_LOG=results_log_answers3.ID_RE_LOG;");
		$this->query("DELETE FROM results_log_answers45 USING results_log_answers45, results_log
						WHERE results_log.ID_RE=$ID_RE AND
							results_log.ID_RE_LOG=results_log_answers45.ID_RE_LOG;");
		$this->query("DELETE FROM results_log_answers USING results_log_answers, results_log
						WHERE results_log.ID_RE=$ID_RE AND
							results_log.ID_RE_LOG=results_log_answers.ID_RE_LOG;");
		$this->query("DELETE FROM results_log WHERE results_log.ID_RE=$ID_RE;");
		if(USE_TRANSACTION)
			$this->query("COMMIT;");
		else
			$this->unlock();
		return true;	
	}
	function GetInfoResult($ID_RE)
	{
		$Sql="SELECT * FROM results WHERE ID_RE = '$ID_RE'";
		$this->query($Sql);
		if($this->next_record())
		{
			$this->ID_RE=$ID_RE;
			$this->ID_TEST=$this->f("ID_TEST");
			$this->ID_ST=$this->f("ID_ST");
			$this->Result=$this->f("Result");
			return true;
		}
		else
		{
			$this->ID_RE=0;
			$this->Result=0;
			$this->ID_ST=0;
			$this->ID_TEST=0;
			return false;
		}
	}
	function GetInfoResultEx($ID_RE)
	{
		$sql="SELECT results.*, students.StName, groups.* FROM results, groups, students WHERE ID_RE = '$ID_RE' AND students.ID_ST=results.ID_ST AND students.ID_GR=groups.ID_GR";
		$this->query($sql);
		if($this->next_record())
		{
			$this->ID_RE=$ID_RE;
			$this->ID_TEST=$this->f("ID_TEST");
			$this->ID_ST=$this->f("ID_ST");
			$this->Result=$this->f("Result");
			$this->StName=$this->f("StName");
			$this->ID_GR=$this->f("ID_GR");
			$this->GrName=$this->f("GrName");
			$this->TestName=$this->f("TestName");
			return true;
		}
		else
		{
			$this->ID_RE=0;
			$this->Result=0;
			$this->ID_ST=0;
			$this->ID_TEST=0;
			$this->StName="";
			$this->GrName="";
			$this->TestName="";
			return false;
		}
	}
	function CanViewResult($ID_RE)
	{
		$this->query("SELECT ID_GR FROM results, students WHERE ID_RE =$ID_RE AND results.ID_ST = students.ID_ST");
		if($this->next_record())
		{
			$ID_GR = $this->f("ID_GR");
			if($this->CanUseGroup($ID_GR))
			{
				return true;
			}
		}
		return false;
	}
	function CanDeleteResult($ID_RE)
	{
		$this->query("SELECT ID_GR, ID_TEST FROM results, students WHERE ID_RE =$ID_RE AND results.ID_ST = students.ID_ST");
		if($this->next_record())
		{
			$ID_GR = $this->f("ID_GR");
			$ID_TEST = $this->f("ID_TEST");
			if( $this->CanAdminGroup($ID_GR) ||($this->CanUseGroup($ID_GR)&&$this->CanUseTest($ID_TEST)) )
			{
				return true;
			}
		}
		return false;	
	}
}
?>