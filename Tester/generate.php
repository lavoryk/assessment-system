<?php
include_once "../inc/tester.inc.php";
if(empty($tester))
	$tester = new CTester();
if(!$tester->IsLogin())
{
	header("location:index.php");
}
else
{
	if(empty($_SESSION["T_S_Time"]))
	{
		$ID_TEST=empty($_POST["ID_TEST"])?(0):($_POST["ID_TEST"]);
		$ID_TEST=intval($ID_TEST);	
		$tpl = new CTemplateTester();
		if($tester->Generate($ID_TEST))
		{			
			if(!$tester->CanGetRealResult())
			{			
				if($tester->gn_warning&1)
				{				
					$tester->GetInfoTest($tester->GetID_TEST());
					if($tester->ShowTask=='Y' && $tester->OldResult>=PASS_MARK)
					{
						$tpl->assign("TASK_BODY", "<button type=\"button\" onclick=\"javascript:document.location = 'show_task.php'\">Open Task</button>", false);
					}
					$tpl->assign("old_result",$tester->OldResult);
					$tpl->assign("warning1",true);					
					
					// Было
					// $tpl->assign(array("TASK_BODY"=>"",
					//					"ACTION_STRING"=>"Close1",
					//					"GEN_FUNCTION"=>"window.close()")
					//			);
					//	UnsetTesterSessionValue();
					// Заменено на
					if($tester->OldResult>=PASS_MARK)
					{
						$tpl->assign(array("TASK_BODY"=>"",
										"ACTION_STRING"=>"Close",
										"GEN_FUNCTION"=>"window.close()")
								);
						UnsetTesterSessionValue();
					}
					else 
					{
						$tpl->assign("GEN_FUNCTION","my_win_open('main.php')");
						$tpl->assign("ACTION_STRING","START");
					}
					
				}
				else if($tester->gn_warning&2)
				{
					$tpl->assign("warning2", true);
					$tpl->assign("GEN_FUNCTION","my_win_open('main.php')");
					$tpl->assign("ACTION_STRING","START");
				}			
			}
			else
			{
				$tpl->assign("GEN_FUNCTION","my_win_open('main.php')");
				$tpl->assign("ACTION_STRING","START");
			}
		}
		else
		{
			if($tester->gn_error!=0)//if($tester->gn_error==5)
			{
				$tpl->assign(array("TASK_BODY"=>"",
									"ACTION_STRING"=>"Close",
									"GEN_FUNCTION"=>"window.close()")
							);			
				$tpl->assign("error5", true);
				UnsetTesterSessionValue();
			}
			else
			{
				header("location:index.php");
			}
		}	
		$tpl->display("generate.tpl");
	}
	else
	{
		//Возвратились назад на страницу main
		header("location:main.php");
	}		
} 
?>	