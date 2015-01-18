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
	if(isset( $_FILES["ExcelFile"]["tmp_name"]) )
	{
		$tpl = new PluginTpl();
		$data = new Spreadsheet_Excel_Reader();
		$data->setOutputEncoding('CP1251');	
		$file_name = $_FILES["ExcelFile"]["tmp_name"];
		if($data->read($file_name))
		{				
			if(count($data->boundsheets) > 0)
			{
				$_SESSION["data"] = $data;
				$_SESSION["file_name"] = $_FILES["ExcelFile"]["name"];
				$tpl->assign("error", false);
				$tpl->assign("file_name", $_SESSION["file_name"]);
				foreach($data->boundsheets as $key => $value)
				{
					$tpl->append("boundsheet_index", $key);
					$tpl->append("boundsheet_name", $value["name"]);
				}
				if(count($data->boundsheets) == 1)
				{
					$tpl->assign("boundsheet_index_selected", 0);
				}				
				$IsBlock = 'N';
				if($obj->IsTestAdmin())
				{
					$sql=sprintf("SELECT tests.*, 'Y' AS 'CanAdmin', 'Y' AS 'CanChange' FROM tests WHERE tests.IsBlock='%s' ORDER BY TestName;",
					$IsBlock);
				}
				else
				{
					$sql=sprintf("SELECT tests.*, test_priv.CanAdmin, test_priv.CanChange FROM tests,teachers,test_priv WHERE (tests.IsBlock='%s' AND tests.ID_TEST=test_priv.ID_TEST AND test_priv.ID_TE=teachers.ID_TE AND teachers.ID_TE=%d AND test_priv.CanAdmin = 'Y') ORDER BY TestName;",
					$IsBlock,$obj->GetID_TE());
				}
				$obj->query($sql);
				while ($obj->next_record())
				{
					$tpl->append("IDs_TEST", $obj->f("ID_TEST"));
					$tpl->append("TestsName", $obj->f("TestName"));
				}
			}
		}
		else
		{
			$tpl->assign("error", true);
			$tpl->assign("file_name", $_FILES["ExcelFile"]["name"]);
		}
		$tpl->display("page02.tpl");
	}
	else 
	{
		header("location:index.php");		
	}
}
?>
