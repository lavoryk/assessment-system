<?php
include("template_tester.inc.php");
class CTester extends CLevelQuestion
{
	var $Debug=false;
	var $ID_ST=0;
	var $STName="";
	var $ID_GR=0;
	var $GrName="";
	var $gn_error;
	var $gn_warning;//0-все чотко
  					//1-Тест вже було пройдено
  					//2-Ще не настав час проходження тесту
  					//3-і те і друге
  	var $OldResult=0;
	function CTester()
	{
		session_start();
	}
	function CheckLogin($STName,$STPass)
	{
		$sql=sprintf("SELECT ID_ST FROM students WHERE STName='%s' AND STPass='%s'",
				$this->PrepareString($STName),
				$this->PreparePass($STPass));
		$this->query($sql);
		if($this->next_record())
		{
			$_SESSION["ID_ST"]=intval($this->f("ID_ST"));
			return true;
		}
		else
		{
			$_SESSION["ID_ST"]=0;
			return false;
		}
	}
	
	function GetID_ST()
	{
		if(empty($_SESSION["ID_ST"]))
			return 0;
		else
			return intval($_SESSION["ID_ST"]);
	}
	function GetID_TEST()
	{
		if(empty($_SESSION["ID_TEST"]))
			return 0;
		else
			return intval($_SESSION["ID_TEST"]);
	}
	function IsLogin()
	{		
		$id = $this->GetID_ST();
		$this->query("SELECT ID_ST FROM students WHERE ID_ST = $id;");
		if($this->next_record())
			return true;
		else
			return false;
	}
	function Generate($ID_TEST)
	{
		$_SESSION["ID_TEST"] = intval($ID_TEST);
		if (!$this->GetInfoLevelQuestion($ID_TEST))
		{
			return false;
		}
		//if Різні та манітні перевірки
		$_SESSION["T_S_Time"] = 0;		
		$_SESSION["N_Max"] = array_sum($this->Number);// Визначає загальну к-сть завдань масиві Questions
		$_SESSION["Questions"] = array();
				//Новий формат !!!
					/*
					=(0=>array(	"ID_QU"=>Код завдання в БД(ID_QU),								
								"A"=>array(0=>ID_AN,1=>ID_AN,...),
								"S_V"=>(    Якщо Q_Type==1, то просто індекс вибраної відповіді,
								            Якщо Q_Type==2 то масив з вибраними відповідями,
								            Якщо Q_Type==3 то значення, що ввів студент
								            Якщо Q_Type==5 то масив з вибраними термінами (при чому тут будуть зберігатись ID_AN)
								        )
									)
						)
					*/
		if ($this->IsBlock=='N')
		{
			$query="SELECT ID_QU, Q_Type FROM questions WHERE (ID_TEST=%d AND ID_Level=%d) ORDER BY ID_QU;";
		}
		else
		{
			$query="SELECT ID_QU, Q_Type FROM questions,tests,tests_blocks 
				WHERE ((tests_blocks.ID_TEST_BLOCK=%d AND
				tests_blocks.ID_TEST=tests.ID_TEST AND
				questions.ID_TEST=tests.ID_TEST)
				AND questions.ID_Level=%d) ORDER BY tests_blocks.ID_TEST, ID_QU;";
		}
		$QuestionCountGenarate=0;
		foreach ($this->Number as $l => $N)
		{    
			if(!($N>0))
				continue;			
			//Якщо не достатньо питань генерує помилку !
			if ($this->QTYInTest[$l]<2*$N)
				return (!($this->gn_error=5));
			//Тимчасовий масив для формування випадкової групи з $N завдань 
			$T_A=array();
			for ($i=0;$i<$N;++$i)
			{         		
				do 
				{
					$T_Rnd=rand(1,$this->QTYInTest[$l]);
				}
				while(isset($T_A[$T_Rnd]));         		
				$T_A[$T_Rnd]=$T_Rnd;         		
			}
			sort($T_A);
			$this->query(sprintf($query,$ID_TEST,$l));
			for ($i=0;$i<$N;$i++)
			{
				$this->seek($T_A[$i]-1);
				$this->next_record();
				$Q_Type = $this->f("Q_Type");
				//!!!
				switch($Q_Type)
        	  		{
				case Q_TYPE1:
					$S_V = intval(-1);
				break;
				case Q_TYPE2:
					$S_V = array();
				break;
				case Q_TYPE3:
					$S_V = "";
				break;
				case Q_TYPE4:
				case Q_TYPE5:
				    $S_V = array();
				break;
				}
				array_push ($_SESSION["Questions"],array("ID_QU"=>intval($this->f("ID_QU")),"S_V"=>$S_V));
			}
			for ( $i=$QuestionCountGenarate; $i<($QuestionCountGenarate+$N); ++$i)
			{
				$this->query("SELECT * FROM answers where ID_QU=".$_SESSION["Questions"][$i]["ID_QU"]." ORDER BY A_True");
				$TtTt = array();
				while ($this->next_record())
				{
					$TtTt[] = intval($this->f("ID_AN"));
				} 
				shuffle($TtTt);
				$_SESSION["Questions"][$i]["A"] = $TtTt;
			}
            $QuestionCountGenarate += $N;
		}
		if($QuestionCountGenarate == 0)
		{
			return (!($this->gn_error=5));
		}
		$_SESSION["N_Current_index"] = 0;
		return true;
	}

	function CanGetRealResult()
	{
		$this->gn_warning = 0;
		$this->OldResult = 0;
		$this->query(sprintf("SELECT * FROM results WHERE (ID_TEST=%d AND ID_ST=%d)",
					$this->GetID_TEST(),
					$this->GetID_ST()));
		if ($this->next_record())
		{
			$this->OldResult = $this->f("Result");
			$this->gn_warning |= 1;
		}    	
		$this->query(sprintf("SELECT * FROM time_table,students WHERE (ID_TEST=%d AND time_table.ID_GR=students.ID_GR AND students.ID_ST=%d AND S_Date<=NOW() AND NOW()<=F_Date)",
			$this->GetID_TEST(),
			$this->GetID_ST()));
		if (!$this->next_record())
		{
			$this->gn_warning |= 2;
		}
		return !$this->gn_warning;
	}

	function FixStudentAnswer($NextIndex, $SCV)
	{
		//print_r($SCV);
		//Узнаем тип вопроса
		$this->query("SELECT Q_Type FROM questions WHERE ID_QU=".$_SESSION["Questions"][$_SESSION["N_Current_index"]]["ID_QU"]);
		if (!$this->next_record())
		{
			return false;
		}
		$Q_Type = $this->f("Q_Type");
		//Фиксируем ответы студента
		switch($Q_Type)
		{
		case Q_TYPE1:
				$_SESSION["Questions"][$_SESSION["N_Current_index"]]["S_V"] = ($SCV == null)?-1:intval($SCV);
		break;
		case Q_TYPE2:
				$_SESSION["Questions"][$_SESSION["N_Current_index"]]["S_V"] = is_array($SCV)?($SCV):(array());
		break;
		case Q_TYPE3:		         
		        $_SESSION["Questions"][$_SESSION["N_Current_index"]]["S_V"] = ($SCV == null)?"":strval($SCV);
		break;
		case Q_TYPE4:
				if (is_array($SCV) && count($SCV) == count($_SESSION["Questions"][$_SESSION["N_Current_index"]]["A"]))
				{
					// build new answers list
					$tmpA = array();
					for($i = 0; $i < count($SCV); ++$i)
					{
						$tmpA[$i] = $_SESSION["Questions"][$_SESSION["N_Current_index"]]["A"][$SCV[$i]];
					}
					$_SESSION["Questions"][$_SESSION["N_Current_index"]]["A"] = $tmpA;
				}
		break;
		case Q_TYPE5:
		        $_SESSION["Questions"][$_SESSION["N_Current_index"]]["S_V"] = is_array($SCV)?($SCV):(array());
		break;
		}
		//print_r($_SESSION["Questions"][$_SESSION["N_Current_index"]]["S_V"]);
		if($NextIndex<0 || $NextIndex>=$_SESSION["N_Max"])
		{
			$NextIndex = $_SESSION["N_Max"] - 1;
		}
		$_SESSION["N_Current_index"] = $NextIndex;
		if($_SESSION["T_S_Time"]==0)
		{
			$_SESSION["T_S_Time"]=time();
		}
		return true;
	}

	function IsWriteLog($ID_TEST,$ID_GR)
	{
		$this->query("SELECT WriteLog FROM time_table WHERE ID_GR=$ID_GR AND ID_TEST=$ID_TEST AND WriteLog='Y';");
		return $this->next_record();
	}

	function GetStudentInfoEx()
	{
		$sql=sprintf("SELECT students.ID_ST, students.STName, groups.ID_GR, groups.GrName FROM students, groups WHERE ID_ST=%d AND students.ID_GR=groups.ID_GR;",
				$this->GetID_ST());
		$this->query($sql);
		if($this->next_record())
		{
			$this->ID_ST=$this->f("ID_ST");
			$this->STName=$this->f("STName");
			$this->ID_GR=$this->f("ID_GR");
			$this->GrName=$this->f("GrName");
			return true;
		}
		else
		{
			$this->ID_ST=0;
			$this->STName="";
			$this->ID_GR=0;
			$this->GrName="";
			return false;
		}
	}	
}

function UnsetTesterSessionValue()
{
	unset($_SESSION["ID_TEST"]);
	unset($_SESSION["T_S_Time"]);
	unset($_SESSION["N_Max"]);
	unset($_SESSION["Questions"]);
	unset($_SESSION["N_Current_index"]);
	unset($_SESSION["ID_ST"]);
}
?>