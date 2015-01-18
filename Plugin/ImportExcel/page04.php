<?php
include_once "../../inc/question.inc.php";
include_once "../../inc/level_question.inc.php";
include "inc/config.inc.php";
$obj = new CQuestion();
if(!$obj->IsLogin())
{
	header("location:../TestMaker/index.php");
}
else
{
	$AddCount = 0;
	if($obj->CanAdminTest($_SESSION["ID_TEST"]))
	{
		if( is_array($_SESSION["ID_Level"]) )
		{		
			$LevelQuestions = new CLevelQuestion();
			// Не нужно сосздавать два подкулючения
			$LevelQuestions->Link_ID = $obj->Link_ID;
			if( isset( $_GET["ClearTest"] ) )		
			{
				$LevelQuestions->ClearTest($_SESSION["ID_TEST"]);				
			}
			$LevelQuestions->GetInfoLevelQuestion($_SESSION["ID_TEST"]);		
			$Point = &$LevelQuestions->Point; // Глубокое копирование deep copy
			$Number = &$LevelQuestions->Number; // Глубокое копирование deep copy
			foreach ($_SESSION["ID_Level"]  as $key => $value)
			{
				if( !$LevelQuestions->IsInTable[$key] )
				{
					// Нет такого уровня
					$Point[$key] = $key;
					$Number[$key] = 1;
				}		
			}
			$LevelQuestions->ChangeLevelQuestion($_SESSION["ID_TEST"], $Point, $Number);
			foreach($_SESSION["Tasks"] as $key => $value)
			{
				$obj->AddQuestion(	$_SESSION["ID_TEST"],
									$value["Q_Type"],
									$value["ID_Level"],
									//$value["Q_Body"],
									str_replace("'","",$value["Q_Body"]),
									$value["ID_AN"],
									$value["A_True"],
									$value["A_Body"]);
			}
			$AddCount = count($_SESSION["Tasks"]);
		}		
	}
	UnsetAllValue();	
	header("location:page05.php?AddCount=".$AddCount);
}
?>