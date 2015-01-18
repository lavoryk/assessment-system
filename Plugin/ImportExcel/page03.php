<?php
include_once "../../inc/testmaker.inc.php";
include "inc/config.inc.php";
$obj = new CTestMaker();
if(!$obj->IsLogin())
{
	header("location:../TestMaker/index.php");
}
else
{
	$_SESSION["Tasks"] = array();
	$boundsheet = isset($_GET["boundsheet"])?intval($_GET["boundsheet"]):-1;
	$ID_TEST=empty($_GET["ID_TEST"]) ? (0) : ($_GET["ID_TEST"]);
	$data = $_SESSION["data"];
	//print_r ($data);
	if(!isset($data->sheets[$boundsheet]) || $ID_TEST<=0)
	{
		header("location:index.php");
	}
	else
	{	
		// Поехали!!!!!!!
		$tpl = new PluginTpl();
		$_SESSION["ID_TEST"] = $ID_TEST;
		$_SESSION["boundsheet"] = $boundsheet; // На всякий случай...
		$_SESSION["Tasks"] = array();
		$_SESSION["ID_Level"] = array();
		$tpl->assign("file_name", $_SESSION["file_name"]);
		for ($nRow = ROW_WITH_ANSWERS; $nRow <= $data->sheets[$boundsheet]['numRows']; $nRow++)
		{	
			if(isset($data->sheets[$boundsheet]['cells'][$nRow][COL_WITH_QUESTION]))
			{
				$Q_Body	= trim($data->sheets[$boundsheet]['cells'][$nRow][COL_WITH_QUESTION]);
				if( strlen( $Q_Body ) > 0 )
				{				
					$nTrueCount = 0;
					$nFalseCount = 0;
					$ID_AN = array();
					$A_True = array();
					$A_Body = array();
					for($nAnswerCol = COL_WITH_QUESTION + 1; $nAnswerCol <= $data->sheets[$boundsheet]['numCols']; ++$nAnswerCol)
					{					
						if( isset($data->sheets[$boundsheet]['cells'][$nRow][$nAnswerCol]) )
						{
							$strTrueFalse = strtolower( trim( $data->sheets[$boundsheet]['cells'][$nRow][$nAnswerCol] ) );
							if(strlen($strTrueFalse) > 0)
							{
								$strAnswer = trim($data->sheets[$boundsheet]['cells'][2][$nAnswerCol]);
								if( strlen($strAnswer)  > 0 )
								{
									
									if( $strTrueFalse == 'п')
									{
										$ID_AN[] = 0;
										$A_Body[] = $strAnswer;
										$A_True[] = "checked";
										++$nTrueCount;
									}
									else// if( strlen( $strTrueFalse ) > 0 )
									{
										$ID_AN[] = 0;
										$A_Body[] = $strAnswer;
										$A_True[] = false;
										++$nFalseCount;
									}
								}
							}
						}
					}
					if($nTrueCount > 0 && $nFalseCount > 0)
					{
						// Первый ответ должен быть верным
						// Особенно это важно для типа вопросов Q_TYPE1
						for($i = 1; $i < count($A_True); ++$i)
						{
							if($A_True[$i])
							{
								swap($A_True[0], $A_True[$i]);
								swap($A_Body[0], $A_Body[$i]);
								break;
							}
						}
						$tpl->append("Q_Body", $Q_Body );
						$tpl->append("A_Body", $A_Body);
						$tpl->append("A_True", $A_True);
						$Q_Type = $nTrueCount>1?(Q_TYPE2):(Q_TYPE1);
						$ID_Level = intval($data->sheets[$boundsheet]['cells'][$nRow][COL_WITH_LEVEL]);
						if($ID_Level<1 || $ID_Level>LEVEL_MAX)
						{
							$ID_Level = 1;
						}
						$_SESSION["ID_Level"][$ID_Level] = true;
						$_SESSION["Tasks"][] = array(
						"Q_Type" => $Q_Type,
						"ID_Level" => $ID_Level,
						"Q_Body" => $Q_Body,
						"ID_AN" => $ID_AN,
						"A_True" => $A_True,
						"A_Body" => $A_Body);
					}
				}
			}
		}
		$tpl->display("page03.tpl");
	}	
}
?>
