<?php
include ("../inc/question.inc.php");
$obj=new CQuestion();
$ID_TEST=empty($_GET["ID_TEST"])?(0):($_GET["ID_TEST"]);
$ID_TEST=intval($ID_TEST);
$ID_QU=empty($_GET["ID_QU"])?(0):($_GET["ID_QU"]);
$ID_QU=intval($ID_QU);
if (!$obj->IsLogin())
{
	header("location:index.php");
}
else if ($ID_TEST != 0 && !$obj->CanUseTest($ID_TEST) || ($ID_QU!=0&&!$obj->CanUseQuestion($ID_QU))) 
{
	$obj->LogOut();
	header("location:login.php");	
}
else
{	
	$Q_TYPE=empty($_GET["Q_TYPE"])?(0):($_GET["Q_TYPE"]);
	$Q_TYPE=intval($Q_TYPE);
	$CanUseSpaw=false;
	//Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.6) Gecko/20050317 Firefox/1.0.2
	if(USE_SPAW)
	{
		include_once "../spaw/config/spaw_control.config.php";
		include_once "../spaw/spaw_control.class.php";
		$CanUseSpaw=SPAW_Util::checkBrowser();
	}
	function PrepareHtmlQuestion($index, $str, $height)
	{
		if (USE_SPAW && $GLOBALS["CanUseSpaw"])
		{
			$spaw = new SPAW_Wysiwyg("A_Body[$index]",$str,'en','default','','100%', $height);
			$A_Body = $spaw->getHtml();		
		}
		else
		{
			$A_Body = $GLOBALS["obj"]->tpl->get("a_body_row");
			$A_Body = str_replace(array("{A_INDEX}","{A_BODY}"),array($index,$str),$A_Body);
		}
		return $A_Body;
	}	
	/*$ANSWER_COUNT=empty($_POST["ANSWER_COUNT"])?(ANSWER_COUNT_DEFAULT):(intval($_POST["ANSWER_COUNT"]));
	if($ANSWER_COUNT>ANSWER_COUNT_MAX||$ANSWER_COUNT<ANSWER_COUNT_DEFAULT||$Q_TYPE!=Q_TYPE2)
	{
		$ANSWER_COUNT=ANSWER_COUNT_DEFAULT;
	}*/
	$obj->PreparePageMenu();
	$obj->tpl->set_file("question_add_change","question_add_change.html");
	$obj->tpl->set_file("question_add_change_ex","question_add_change_ex.html");
	if( !USE_SPAW || !$CanUseSpaw)
	{
		$obj->tpl->set_block("question_add_change_ex","q_body_row");
		$obj->tpl->set_block("question_add_change_ex","a_body_row");
	}	
	$obj->tpl->set_block("question_add_change","level_row","LEVELS_ROWS");
	$obj->tpl->set_block("question_add_change","block_q_type1","BLOCK_Q_TYPE1");
	$obj->tpl->set_block("question_add_change","block_q_type2","BLOCK_Q_TYPE2");
	$obj->tpl->set_block("question_add_change","block_q_type3","BLOCK_Q_TYPE3");
	$obj->tpl->set_block("question_add_change","block_q_type4","BLOCK_Q_TYPE4");
	$obj->tpl->set_block("question_add_change","block_q_type5","BLOCK_Q_TYPE5");
	$obj->tpl->set_block("question_add_change","answer_row","ANSWERS_ROWS");
	$obj->tpl->set_block("question_add_change","answer_count_row","ANSWER_COUNT_ROW");	
	
	if($obj->GetInfoQuestion($ID_QU))
	{
		$Q_TYPE=$obj->Q_Type;
		$ID_TEST=$obj->ID_TEST;
	}
	else
	{
		if ($Q_TYPE < Q_TYPE1 || $Q_TYPE > Q_TYPE_MAX)
		{
			$obj->LogOut();			
			header("location:index.php");			
		}
		//Перевірку на коректність ID_TEST не додаю, так як
		//це буде перевірено при визначеннні прав, див. вище
	}	
	if(USE_SPAW&&$CanUseSpaw)
	{
		$spaw = new SPAW_Wysiwyg('Q_Body',$obj->Q_Body,'en','default','','100%','100px');
		$Q_Body=$spaw->getHtml();		
	}
	else
	{		
		$Q_Body=$obj->tpl->get("q_body_row");
		$Q_Body=str_replace("{Q_BODY}",$obj->Q_Body,$Q_Body);
		//$Q_Body="<textarea style=\"width:100%; height:100px\" name=\"Q_Body\">".$obj->Q_Body."</textarea>";
	}
	$obj->tpl->set_var(array(	"ID_QU"=>$obj->ID_QU,
								"ID_TEST"=>$ID_TEST,
								"Q_TYPE"=>$Q_TYPE,
								"Q_BODY_HTML"=>$Q_Body
						));	
	$obj->query("SELECT * FROM level_question WHERE ID_TEST=$ID_TEST AND Point>0");
	$i=0;
	while($obj->next_record())
	{
		$obj->tpl->set_var(array(	"ID_LEVEL"=>$obj->f("ID_Level"),
									"NUMBER"=>$obj->f("Point"),
									"CHECKED"=>($obj->f("ID_Level")==$obj->ID_Level)?("checked"):("")
							));
		$obj->tpl->parse("LEVELS_ROWS","level_row",true);
		++$i;
	}
	$obj->tpl->set_var("MAX_LEVEL_INDEX",$i);	
	switch($Q_TYPE)
	{
		case Q_TYPE1:			
			$obj->tpl->set_var("ANSWER_COUNT_DISABLED","");
			$obj->tpl->set_var("A_SECOND_BODY_HTML","");
			$obj->tpl->set_var("BLOCK_Q_TYPE2","");
			$obj->tpl->set_var("BLOCK_Q_TYPE3","");
			$obj->tpl->set_var("BLOCK_Q_TYPE4","");
			$obj->tpl->set_var("BLOCK_Q_TYPE5","");
			$obj->tpl->parse("BLOCK_Q_TYPE1","block_q_type1");
			$i=0;
			foreach ($obj->Answers as $v)
			{				
				$obj->tpl->set_var(
							array(	"A_CHECKED"=>($i==0)?("checked"):(""),
									"DISABLED"=>"disabled",
									"A_INDEX"=>$i,
									"A_BODY_HTML"=>PrepareHtmlQuestion($i, $v["A_Body"], '60px'),
									"ID_AN"=>$v["ID_AN"]
						));	
				$i++;
				$obj->tpl->parse("ANSWERS_ROWS","answer_row",true);
			}			
			$ANSWER_COUNT=($i>ANSWER_COUNT_DEFAULT)?($i):(ANSWER_COUNT_DEFAULT);
			for(;$i<ANSWER_COUNT_MAX;++$i)
			{			
				$obj->tpl->set_var(
							array(	"A_CHECKED"=>($i==0)?("checked"):(""),
									"DISABLED"=>"disabled",
									"A_INDEX"=>$i,
									"A_BODY_HTML"=>PrepareHtmlQuestion($i, "", '60px'),
									"ID_AN"=>0
						));			
				$obj->tpl->parse("ANSWERS_ROWS","answer_row",true);
			}			
		break;
		case Q_TYPE2:
			$obj->tpl->set_var("ANSWER_COUNT_DISABLED","");
			$obj->tpl->set_var("A_SECOND_BODY_HTML","");
			$obj->tpl->set_var("BLOCK_Q_TYPE1","");
			$obj->tpl->set_var("BLOCK_Q_TYPE3","");
			$obj->tpl->set_var("BLOCK_Q_TYPE4","");
			$obj->tpl->set_var("BLOCK_Q_TYPE5","");
			$obj->tpl->parse("BLOCK_Q_TYPE2","block_q_type2");
			$i = 0;
			foreach ($obj->Answers as $v)
			{
				$obj->tpl->set_var(
							array(	"A_CHECKED"=>($v["A_True"]==CORRECT)?("checked"):(""),
									"DISABLED"=>"",
									"A_INDEX"=>$i,
									"A_BODY_HTML" => PrepareHtmlQuestion($i, $v["A_Body"], '60px'),
									"ID_AN"=>$v["ID_AN"]
						));	
				++$i;
				$obj->tpl->parse("ANSWERS_ROWS","answer_row",true);
			}
			$ANSWER_COUNT=($i>ANSWER_COUNT_DEFAULT)?($i):(ANSWER_COUNT_DEFAULT);
			for(; $i < ANSWER_COUNT_MAX; ++$i)
			{				
				$obj->tpl->set_var(
							array(	"A_CHECKED"=>"",
									"DISABLED"=>"",
									"A_INDEX"=>$i,
									"A_BODY_HTML"=>PrepareHtmlQuestion($i, "", '60px'),
									"ID_AN"=>0
						));			
				$obj->tpl->parse("ANSWERS_ROWS","answer_row",true);
			}
		break;
		case Q_TYPE3:
		    $obj->tpl->set_var("ANSWER_COUNT_DISABLED","disabled");
            $obj->tpl->set_block("question_add_change_ex","a3_body_row");
            
            $obj->tpl->set_var("A_SECOND_BODY_HTML","");
            $obj->tpl->set_var("BLOCK_Q_TYPE1","");
			$obj->tpl->set_var("BLOCK_Q_TYPE2","");
			$obj->tpl->set_var("BLOCK_Q_TYPE4","");
			$obj->tpl->set_var("BLOCK_Q_TYPE5","");
			$obj->tpl->parse("BLOCK_Q_TYPE3","block_q_type3");
            $ANSWER_COUNT = 1;
            $i = 0;
            foreach ($obj->Answers as $v)
			{
			    $A_Body = str_replace(array("{A_INDEX}","{A_BODY}"),array(0, $v["A_Body"]), $GLOBALS["obj"]->tpl->get("a3_body_row"));
			    $obj->tpl->set_var(
							array(	"A_CHECKED"=>"checked",
									"DISABLED"=>"disabled",
									"A_INDEX"=>$i,
									"A_BODY_HTML" => $A_Body,
									"ID_AN"=>$v["ID_AN"]
						));
				++$i;
				$obj->tpl->parse("ANSWERS_ROWS","answer_row",true);
			}
            for( ;$i < $ANSWER_COUNT; ++$i)
			{
			    $A_Body = str_replace(array("{A_INDEX}","{A_BODY}"),array(0,""), $obj->tpl->get("a3_body_row"));
			    $obj->tpl->set_var(
							array(	"A_CHECKED"=>"checked",
									"DISABLED"=>"disabled",
									"A_INDEX"=>$i,
									"A_BODY_HTML" => $A_Body,
									"ID_AN"=>0
						));
				$obj->tpl->parse("ANSWERS_ROWS","answer_row",true);				
			}
		break;
		case Q_TYPE4:
		  $obj->tpl->set_var("ANSWER_COUNT_DISABLED","");
            $obj->tpl->set_block("question_add_change_ex","a4_body_row", "A4_BODY_ROWS");
            $obj->tpl->set_var("BLOCK_Q_TYPE1","");
			$obj->tpl->set_var("BLOCK_Q_TYPE2","");			
			$obj->tpl->set_var("BLOCK_Q_TYPE3","");
			$obj->tpl->set_var("BLOCK_Q_TYPE5","");
			$obj->tpl->parse("BLOCK_Q_TYPE4","block_q_type4");
            $i = 0;
			foreach ($obj->Answers as $v)
			{
				$obj->tpl->set_var(
							array(	"A_CHECKED"=>($v["A_True"]==CORRECT)?("checked"):(""),
									"DISABLED"=>"disabled",
									"A_INDEX"=>$i,
									"A_BODY_HTML" => PrepareHtmlQuestion($i, $v["A_Body"], '60px'),
									"A_SECOND_BODY" => $i,
									"ID_AN"=>$v["ID_AN"]
						));
				++$i;
				$obj->tpl->parse("A_SECOND_BODY_HTML", "a5_body_row");
				$obj->tpl->parse("ANSWERS_ROWS","answer_row",true);
			}
			$ANSWER_COUNT=($i>ANSWER_COUNT_DEFAULT)?($i):(ANSWER_COUNT_DEFAULT);
			for(; $i < ANSWER_COUNT_MAX; ++$i)
			{				
				$obj->tpl->set_var(
							array(	"A_CHECKED"=>"checked",
									"DISABLED"=>"disabled",
									"A_INDEX"=>$i,
									"A_BODY_HTML" => PrepareHtmlQuestion($i, "", '60px'),
									"A_SECOND_BODY" => $i,
									"ID_AN"=>0
						));
                $obj->tpl->parse("A_SECOND_BODY_HTML", "a4_body_row");
				$obj->tpl->parse("ANSWERS_ROWS","answer_row",true);
			}
		break;
		case Q_TYPE5:
            $obj->tpl->set_var("ANSWER_COUNT_DISABLED","");
            $obj->tpl->set_block("question_add_change_ex","a5_body_row", "A5_BODY_ROWS");
            
            $obj->tpl->set_var("BLOCK_Q_TYPE1","");
			$obj->tpl->set_var("BLOCK_Q_TYPE2","");			
			$obj->tpl->set_var("BLOCK_Q_TYPE3","");
			$obj->tpl->set_var("BLOCK_Q_TYPE4","");
			$obj->tpl->parse("BLOCK_Q_TYPE5","block_q_type5");
            $i = 0;
			foreach ($obj->Answers as $v)
			{
				$obj->tpl->set_var(
							array(	"A_CHECKED"=>($v["A_True"]==CORRECT)?("checked"):(""),
									"DISABLED"=>"disabled",
									"A_INDEX"=>$i,
									"A_BODY_HTML" => PrepareHtmlQuestion($i, $v["A_Body"], '60px'),
									"A_SECOND_BODY" => $v["A_SecondBody"],
									"ID_AN"=>$v["ID_AN"]
						));
				++$i;
				$obj->tpl->parse("A_SECOND_BODY_HTML", "a5_body_row");
				$obj->tpl->parse("ANSWERS_ROWS","answer_row",true);
			}
			$ANSWER_COUNT=($i>ANSWER_COUNT_DEFAULT)?($i):(ANSWER_COUNT_DEFAULT);
			for(; $i < ANSWER_COUNT_MAX; ++$i)
			{				
				$obj->tpl->set_var(
							array(	"A_CHECKED"=>"checked",
									"DISABLED"=>"disabled",
									"A_INDEX"=>$i,
									"A_BODY_HTML" => PrepareHtmlQuestion($i, "", '60px'),
									"A_SECOND_BODY" => "",
									"ID_AN"=>0
						));
                $obj->tpl->parse("A_SECOND_BODY_HTML", "a5_body_row");
				$obj->tpl->parse("ANSWERS_ROWS","answer_row",true);
			}
		break;
	}
	$ANSWER_COUNT_MAX = (ANSWER_COUNT_MAX<$ANSWER_COUNT) ? ($ANSWER_COUNT):(ANSWER_COUNT_MAX);
	$obj->tpl->set_var("ANSWER_COUNT_MAX",$ANSWER_COUNT_MAX);
	for($i=ANSWER_COUNT_DEFAULT;$i<($ANSWER_COUNT_MAX+1);++$i)
	{
		if($i==$ANSWER_COUNT)
			$obj->tpl->set_var("ANSWER_COUNT_SELECTED","selected");
		else
			$obj->tpl->set_var("ANSWER_COUNT_SELECTED","");
		$obj->tpl->set_var("ANSWER_COUNT_VALUE",$i);
		$obj->tpl->parse("ANSWER_COUNT_ROW","answer_count_row",true);
	}
	
	if(!empty($_GET["AddNext"]))
	{
		$obj->tpl->set_var("CHECKED","checked");
	}
	else
	{
		$obj->tpl->set_var("CHECKED","");
	}
	if($obj->CanChangeTest($ID_TEST))
		$obj->tpl->set_var("DISABLE_EDIT","");
	else
		$obj->tpl->set_var("DISABLE_EDIT","disabled");
	
	$obj->tpl->parse("CONTENT","question_add_change");
	$obj->tpl->parse("OUT","common");
	$obj->tpl->p("OUT");
}
?>