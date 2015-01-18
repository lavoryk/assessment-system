<?php
include_once "../inc/tester.inc.php";
$tester=new CTester();
if(!$tester->IsLogin())
{
	header("location:index.php");
}
else
{
	$tpl = new CTemplateTester();
	$tester->GetInfoTest($tester->GetID_TEST());
	$tester->CanGetRealResult();
	if($tester->ShowTask=='Y'&&$tester->OldResult>=PASS_MARK)
	{		
		@$handle=fopen($tester->TaskURL,"r");
		if($handle)
		{
			$contents = "";
			while(!feof($handle))
			{
				$contents.=fread($handle,4096);				
			}
			$tpl->assign("TASK_BODY",$contents,true);
			@fclose($handle);				
		}
		else
		{
			$tpl->assign("TASK_BODY", "Could not open ".$tester->TaskURL,true);
		}		
	}
	UnsetTesterSessionValue();
	$tpl->display("show_task.tpl");
}
?>
