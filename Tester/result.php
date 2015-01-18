<?php 
include "../inc/tester.inc.php";
$tester = new CTester();
if(!$tester->GetStudentInfoEx()||!$tester->GetInfoTest($tester->GetID_TEST())||!is_array($_SESSION["Questions"]))
{
	UnsetTesterSessionValue();
	header("location:index.php");
}
else 
{	
	$SCV=isset($_POST["SCV"])?$_POST["SCV"]:null;
	$NextIndex=empty($_POST["N_Move"])?(0):($_POST["N_Move"]);
	$NextIndex = intval($NextIndex);
	$tester->FixStudentAnswer($NextIndex,$SCV);	
	$p_max=0;
	$p_cur=0;
	$bCanGetRealResult=$tester->CanGetRealResult();
	//$bCanGetRealResult = false;
	if($bCanGetRealResult)
	{
    		if(USE_TRANSACTION)
    			$tester->query("START TRANSACTION;");
	    	else
    			$tester->lock(array("results","results_log","results_log_answers","questions","answers","time_table","level_question"));
		$tester->query(sprintf("INSERT INTO results (ID_TEST,ID_ST,Result,FDate)  VALUES (%u,%u,%u,now())",
		$tester->GetID_TEST(), $tester->GetID_ST(), 0 ));
		$tester->query("SELECT MAX(ID_RE) AS ID_RE FROM results;");
		$tester->next_record();
		$ID_RE=$tester->f("ID_RE");
		$bWriteLog=$tester->IsWriteLog($tester->GetID_TEST(),$tester->ID_GR);
	}
	else
	{
		$bWriteLog=false;
	}
	
	foreach($_SESSION["Questions"] as $n=>$q)
	{
		$tester->query("SELECT questions.*, level_question.Point FROM questions,level_question WHERE ID_QU=".$q["ID_QU"]." AND level_question.ID_TEST=questions.ID_TEST AND questions.ID_Level=level_question.ID_Level FOR UPDATE;");
		$tester->next_record();
		$Point=$tester->f("Point");
		$p_max+=$Point;
		$Q_Type=$tester->f("Q_Type");
		//!!!
		if($bWriteLog)
		{
    			$tester->query(sprintf("INSERT INTO results_log (ID_RE, ID_QU) VALUES(%u,%u);",
    							$ID_RE, $q["ID_QU"]
    					));
			$tester->query("SELECT MAX(ID_RE_LOG) AS ID_RE_LOG FROM results_log FOR UPDATE;");
			$tester->next_record();
			$ID_RE_LOG=$tester->f("ID_RE_LOG");
		}
		switch($Q_Type)
		{
        	case Q_TYPE1://Тут все ясно
				$IsTrue=false;
                if($q["S_V"]!=-1)
                {
                	$tester->query(sprintf("SELECT A_True FROM answers WHERE ID_AN=%d FOR UPDATE;",
                					$q["A"][$q["S_V"]]
                					));
            		if ($tester->next_record() && $tester->f("A_True")==CORRECT)
					{
         				$p_cur+=$Point;
						$IsTrue=true;
					}
         			if($bWriteLog)
    				{
         				$tester->query(sprintf("INSERT INTO results_log_answers (ID_RE_LOG, ID_AN) VALUES (%u,%u);",
    								$ID_RE_LOG,	$q["A"][$q["S_V"]] ));
    				}
                }
            	break;
		case Q_TYPE2:
                $IsTrue = true;
            	foreach($q["A"] as $na=>$a)
            	{
                	$tester->query("SELECT A_True FROM answers WHERE ID_AN=".$a." FOR UPDATE");
                    $tester->next_record();
                    if (
                    	($tester->f("A_True")==CORRECT&&!isset($q["S_V"][$na]))||
                        ($tester->f("A_True")==INCORRECT&&isset($q["S_V"][$na]))
                        )
                    {
                    	$IsTrue=false;
                        //break;//З циклу
                    }
                    if ($bWriteLog&&isset($q["S_V"][$na]) )
    				{
         				$tester->query(sprintf("INSERT INTO results_log_answers (ID_RE_LOG, ID_AN) VALUES(%u,%u);",
    								$ID_RE_LOG,	$a ));
    				}
                }
                if ($IsTrue)
                {
         			$p_cur += $Point;
                }
               	break;
         case Q_TYPE3:
                $A_Body = $tester->PrepareString($q["S_V"]);
                $tester->query("SELECT A_True FROM answers WHERE ID_QU=".$q["ID_QU"]." AND A_Body like '".$A_Body."' FOR UPDATE");
                if ($tester->next_record())
                {
                    $p_cur += $Point;
                }
                if ($bWriteLog)
                {
                	$tester->query(sprintf("INSERT INTO results_log_answers3 (ID_RE_LOG, A_BodySV) VALUES(%u,'%s');",
    								$ID_RE_LOG,	$q["S_V"] ));
                }
                break;
         case Q_TYPE4:
         		$IsTrue = true;
         		$tester->query(
         						"SELECT answers2.ID_AN FROM answers, answers2
         						WHERE answers.ID_QU=".$q["ID_QU"]." AND answers.ID_AN = answers2.ID_AN
         						ORDER BY A_SecondBody FOR UPDATE");
         			
         		$i = 0;
         		$RealResult = array();
         		while ($tester->next_record())
         		{
         			// echo $q["A"][$i]." ".$tester->f("ID_AN")."<br />";
         			$RealResult[$i] = intval($tester->f("ID_AN"));
         			if (intval($q["A"][$i]) != $RealResult[$i])
         			{
         				$IsTrue = false;
         			}
         			++$i;
         		}
         		// write LOG
         		if ($bWriteLog)
         		{
	         		for ($i = 0; $i < count($RealResult); ++$i)
					{
	         				$tester->query(sprintf("INSERT INTO results_log_answers45 (ID_RE_LOG, ID_AN, ID_AN_SV) VALUES(%u, %u, %u);",
	    								$ID_RE_LOG,	$RealResult[$i], $q["A"][$i]));
					}
         		}
         		if ($IsTrue)
                {
         			$p_cur += $Point;
                }
         		break;
         case Q_TYPE5:
                $IsTrue = true;
                foreach ($q["A"] as $na=>$a)
                {
                    if (!isset($q["S_V"][$na]) || $q["S_V"][$na] != $a)
                    {
                        $IsTrue = false;
                    }
                    else
                    {
                    	$tester->query(sprintf("INSERT INTO results_log_answers45 (ID_RE_LOG, ID_AN, ID_AN_SV) VALUES(%u, %u, %u);",
    								$ID_RE_LOG,	$a, $q["S_V"][$na]));
                    }
                }
                if ($IsTrue)
                {
         			$p_cur += $Point;
                }
                break;
		}
		if($bCanGetRealResult)
		{
			if($IsTrue)
			{
				$tester->query("UPDATE questions SET qty_true=qty_true+1 WHERE ID_QU=".$q["ID_QU"]);	
				if ($bWriteLog)
				{
					$tester->query(sprintf("UPDATE results_log SET IsRight ='%s' WHERE ID_RE_LOG=%d;",
    							'Y',$ID_RE_LOG));
				}
			}
			else
			{
				$tester->query("UPDATE questions SET qty_false=qty_false+1 WHERE ID_QU=".$q["ID_QU"]);
			}			
		}		
	}
	//echo "p_cur=$p_cur<br />";
	//echo "p_max=$p_max<br />";
	//    Систему оцінювання при необхідності можна змінити тут
	//    ------------------------------
	$Result=floor(($p_cur/$p_max)*MAX_MARK);
	//echo "Result=".$Result;
	if ($Result<2)//Це для п'ятибальної
	   $Result=2;
	//    ------------------------------
	//$tpl = new Template(TESTER_TPL_DIR,"keep");
	$tpl = new CTemplateTester();	
	if ($bCanGetRealResult)
	{       		
		$tester->query(sprintf("UPDATE results SET Result=%u WHERE ID_RE=%u;",
						$Result,
						$ID_RE
						));
		if(USE_TRANSACTION)
			$tester->query("COMMIT;");
		else
			$tester->unlock();
		// TODO Разобратся		
		if($tester->ShowTask=='Y'&&$Result>=PASS_MARK)
		{
			@$handle=fopen($tester->TaskURL,"r");
			
			if($handle)
			{
				$contents = "";
				while(!feof($handle))
				{
					$contents.=fread($handle,4096);					
				}
				$tpl->assign("TASK_BODY",$contents);				
				@fclose($handle);
			}
			else
			{
				$tpl->assign("TASK_BODY","Could not open ".$tester->TaskURL);
			}
		}		
	}	
	$tpl->assign(array("STNAME"=>$tester->STName,
						"GRNAME"=>$tester->GrName,
						"TESTNAME"=>$tester->TestName,
						"RESULT"=>$Result,
						"MAX_RESULT"=>MAX_MARK));
	$tpl->display("result.tpl");	
	UnsetTesterSessionValue();
}
?>