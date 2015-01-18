<?php
include "test.inc.php";
class CLevelQuestion extends CTest 
{
	var $ID_TEST=0;	
	var $Point=array();			// Количество балов разных уровней, которое дается при верном ответе на вопрос
	var $Number=array();		// Количество вопросов разных уровней, которые будут выбранны для теста
	var $QTYInTest=array();	
	var $IsInTable=array();	
	function ChangeLevelQuestion($ID_TEST,$Point,$Number)
	{
		if($this->CanAdminTest($ID_TEST))
		{
			if(!$this->GetInfoLevelQuestion($ID_TEST)||!is_array($Point)||!is_array($Number))
			{
				return false;
			}
			if(USE_TRANSACTION)
				$this->query("START TRANSACTION;");
			else
				$this->lock("level_question");
			for($ID_Level=1;!($ID_Level>LEVEL_MAX);++$ID_Level)
			{
				if(empty($Point[$ID_Level]))
					$Point[$ID_Level]=0;
				else
					$Point[$ID_Level]=abs(intval($Point[$ID_Level]));
				if(empty($Number[$ID_Level]))
					$Number[$ID_Level]=0;
				else
					$Number[$ID_Level]=abs(intval($Number[$ID_Level]));
				
				//if($this->Number[$ID_Level]!=$Number[$ID_Level]||$this->Point[$ID_Level]!=$Point[$ID_Level])
				//{
					//Видалення					
					if($Number[$ID_Level]==0&&$Point[$ID_Level]==0&&
						($this->QTYInTest[$ID_Level]==0||$this->IsBlock=="Y"))
					{
						$sql=sprintf("DELETE FROM level_question WHERE ID_TEST='%d' AND ID_Level='%d';",
									$ID_TEST,$ID_Level);
					}				
					else if($Point[$ID_Level]>0&&$this->IsInTable[$ID_Level])
					{//Зміна
						$sql=sprintf("UPDATE level_question SET Point='%d', Number='%d' WHERE ID_TEST='%d' AND ID_Level='%d';",
									$Point[$ID_Level],$Number[$ID_Level],
									$ID_TEST,$ID_Level);
					}
					else if($Point[$ID_Level]>0)
					{//Вставка
						$sql=sprintf("INSERT INTO level_question (ID_TEST,ID_Level,Point,Number) VALUES ('%d','%d','%d','%d');",
									$ID_TEST,$ID_Level,$Point[$ID_Level],$Number[$ID_Level]);				
					}				
					$this->query($sql);
				//}			
			}
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
	
	function GetInfoLevelQuestion($ID_TEST)
	{   
		if(!$this->GetInfoTest($ID_TEST))
		{
			return false;
		}
		$this->Point=array();
		$this->Number=array();
		$this->QTYInTest=array();
		$this->IsInTable=array();
		$ID_Level=1;
		while(!($ID_Level>LEVEL_MAX))
		{
			$this->IsInTable[$ID_Level]=false;
			$this->Point[$ID_Level]=0;
			$this->Number[$ID_Level]=0;
			$this->QTYInTest[$ID_Level]=0;			
			++$ID_Level;
		}		
		$this->query("SELECT * FROM level_question WHERE ID_TEST='$ID_TEST' ORDER BY ID_Level DESC;");
		while($this->next_record())
		{
			$this->IsInTable[$this->f("ID_Level")]=true;
			$this->Point[$this->f("ID_Level")]=$this->f("Point");
			$this->Number[$this->f("ID_Level")]=$this->f("Number");
		}
		if($this->IsBlock=='N')
		{
			$this->query("SELECT ID_Level, COUNT(*) AS QTY FROM questions WHERE ID_TEST=$ID_TEST GROUP BY ID_Level;");
		}
		else
		{
			$this->query("SELECT ID_Level, COUNT(*) AS QTY FROM questions,tests_blocks WHERE questions.ID_TEST=tests_blocks.ID_TEST AND tests_blocks.ID_TEST_BLOCK=$ID_TEST GROUP BY ID_Level;");
		}
		while($this->next_record())
		{
			$this->QTYInTest[$this->f("ID_Level")]=$this->f("QTY");
		}
		return true;
	}
}
?>