<?php
include "../inc/tester.inc.php";
$test = new CTester();
if(!$test->GetStudentInfoEx())
{
	session_destroy();
	header("location:index.php");
}
else 
{
	$SCV = isset($_POST["SCV"])?$_POST["SCV"]:null;
	$NextIndex = empty($_POST["N_Move"])?(0):($_POST["N_Move"]);
	$NextIndex = intval($NextIndex);
	$test->GetInfoTest($test->GetID_TEST());
	if ($test->DisableShowPrevTask == 'Y' && $_SESSION["N_Current_index"] > $NextIndex )
	{
		$NextIndex = $_SESSION["N_Current_index"];
	}
	$test->FixStudentAnswer($NextIndex,$SCV);
	$N_Current_index=$_SESSION["N_Current_index"];
	$tpl = new CTemplateTester();	
	//Calc remain time
	$r_t_time=($_SESSION["T_S_Time"]+$test->TestTime*60-time());	
	$tpl->assign(array( "STNAME"=>$test->STName,
						"GRNAME"=>$test->GrName,
						"TESTNAME"=>$test->TestName,
						"N_MAX"=>$_SESSION["N_Max"],
						"N_CURRENT"=>$_SESSION["N_Current_index"]+1,
						"R_T_TIME"=>$r_t_time,
						"R_T_MIN"=>floor($r_t_time/60),
						"R_T_SEC"=>($r_t_time%60),
						"ROOTURL"=>"", //$RootUrl,
						"DISABLED_PREV"=>($_SESSION["N_Current_index"]==0 || $test->DisableShowPrevTask=='Y')?"disabled":"",
						"DISABLED_NEXT"=>($_SESSION["N_Current_index"]+1==$_SESSION["N_Max"])?"disabled":"",
						"NextIndex"=>$N_Current_index + 1,
						"PrevIndex"=>$N_Current_index - 1
						));	
	$test->query("SELECT questions.*, level_question.Point FROM questions,level_question WHERE ID_QU=".$_SESSION["Questions"][$N_Current_index]["ID_QU"]." AND level_question.ID_TEST=questions.ID_TEST AND questions.ID_Level=level_question.ID_Level;");
	$test->next_record();	
	$tpl->assign(array("Q_BODY"=>$test->f("Q_Body"),"POINT"=>$test->f("Point")));
	$Q_Type = $test->f("Q_Type");
	$tpl->assign("Q_TYPE", $Q_Type);
	//!!!
	switch($Q_Type)
	{
		case Q_TYPE1:			
			$tpl->assign("INPUT_TYPE","radio");
		break;
		case Q_TYPE2:
			$tpl->assign("INPUT_TYPE","checkbox");
		break;
		case Q_TYPE3:
			$tpl->assign("INPUT_TYPE","text");
			break;
		case Q_TYPE4:
		case Q_TYPE5:
		    $test->query("SELECT answers2.ID_AN, answers2.A_SecondBody
		              FROM answers, answers2
		              WHERE answers.ID_AN = answers2.ID_AN AND ID_QU =".$_SESSION["Questions"][$N_Current_index]["ID_QU"]);
		    while($test->next_record())
		    {
		        $tpl->append(
		              array(
		                  "ID_AN"         => $test->f("ID_AN"),
		                  "A_SECOND_BODY" => $test->f("A_SecondBody")));
		    }
		break;
	}	
	$i=0;
	foreach ($_SESSION["Questions"][$N_Current_index]["A"] as $ID_AN)
	{
		
		$test->query("SELECT A_Body
		              FROM answers 
		              WHERE ID_AN = ".$ID_AN.";");
		$test->next_record();
		$tpl->append("A_BODY", $test->f("A_Body"));
		switch($Q_Type)
		{
		case Q_TYPE1:
		    $tpl->append("SCV_VALUE",$i);
			$tpl->append("FOR_CHEKBOX","");			
			$tpl->append("CHECKED",($_SESSION["Questions"][$N_Current_index]["S_V"]==$i)?("checked"):(""));
		break;
		case Q_TYPE2:
		    $tpl->append("SCV_VALUE",$i);
			$tpl->append("FOR_CHEKBOX","[$i]");
			$tpl->append("CHECKED",(isset($_SESSION["Questions"][$N_Current_index]["S_V"][$i]))?("checked"):(""));
		break;
		case Q_TYPE3:
		    // Один вариант
		    $tpl->append("SCV_VALUE", $_SESSION["Questions"][$N_Current_index]["S_V"]);
		break;
		case Q_TYPE4:
		case Q_TYPE5:
		    $tpl->append("SCV_VALUE", isset($_SESSION["Questions"][$N_Current_index]["S_V"][$i])?$_SESSION["Questions"][$N_Current_index]["S_V"][$i]:-1);
        break;
		}
		++$i;
	}
	$tpl->display("main.tpl");
}
?>