<?php
include "../inc/test.inc.php";
/****************************************************************************************/

class CTestBlock extends CTest 
{	
	function CTestsBlock()
 	{ 	
 		$this->CTest();
 	}
 	function AddTestToBlock($ID_TEST_BLOCK,$ID_TEST)
	{
		if($this->CanAdminTest($ID_TEST_BLOCK)&&$this->CanUseTest($ID_TEST))
		{
			$Sql=sprintf("INSERT INTO tests_blocks(ID_TEST_BLOCK,ID_TEST) VALUES (%d,'%d');",
						$ID_TEST_BLOCK,
						$ID_TEST);
			return $this->query($Sql);
		}
		
		$this->LogOut();
		return false;
	}
 	function DeleteTestFromBlock($ID_TEST_BLOCK,$ID_TEST)
	{
		if($this->CanAdminTest($ID_TEST_BLOCK))
		{
	 		$Sql=sprintf("DELETE FROM tests_blocks WHERE ID_TEST_BLOCK='%d' AND ID_TEST='%d';",
	 					$ID_TEST_BLOCK,
	 					$ID_TEST
	 					);	 	
	 		return $this->query($Sql);
		}
		else
			return false;
	}
}
/****************************************************************************************/
	
	$TestBlock=new CTestBlock();
	if(!$TestBlock->IsLogin())
	{ 
		header("location:index.php");
	}
	else
	{
		$Action=empty($_GET["Action"])?(""):($_GET["Action"]);  
		$ID_TEST_BLOCK=empty($_GET["ID_TEST_BLOCK"])?(0):($_GET["ID_TEST_BLOCK"]);
		$ID_TEST_BLOCK=intval($ID_TEST_BLOCK);
		$ID_TEST=empty($_GET["ID_TEST"])?(0):($_GET["ID_TEST"]);
		$ID_TEST=intval($ID_TEST);
		header("Location:tests_in_block.php?ID_TEST_BLOCK=$ID_TEST_BLOCK");	
		if(strcmp($Action,"ADD")==0)
		{
			$TestBlock->AddTestToBlock($ID_TEST_BLOCK,$ID_TEST);
		}
		if(strcmp($Action,"DEL")==0)
		{
			$TestBlock->DeleteTestFromBlock($ID_TEST_BLOCK,$ID_TEST);
		}
	}
?>
