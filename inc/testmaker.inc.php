<?php
//include ("config.inc.php");
include ("testsys.inc.php");
class CTestMaker extends  CTestSys
{	
	var $tpl=null;	
	function CTestMaker()
	{
		@session_start();
	}
	function PreparePageMenu()
	{
		//формує меню		
		//Потрібно подумати чи потрібні перевірки на повторний запуск
		//if($tpl==null)
		$this->tpl=new Template(TESTMAKER_TPL_DIR,"keep");
		$this->tpl->set_file(array("common"=>"common.html"));
		$this->tpl->set_block("common","Menu","MENU");
		$this->tpl->set_block("common","SysAdminMenu","SYSADMINMENU");
		$this->tpl->set_block("common","LoginMenu","LOGINMENU");
		$this->tpl->set_block("common","LogoutMenu","LOGOUTMENU");
		$this->tpl->set_block("common","row_language","ROW_LANGUAGE");
		if($this->IsLogin())
		{
			$this->tpl->parse("MENU","Menu");
			$this->tpl->parse("LOGOUTMENU","LogoutMenu");
			$this->tpl->set_var("LOGINMENU","");
			if($this->IsSysAdmin())
				$this->tpl->parse("SYSADMINMENU","SysAdminMenu");
			else
				$this->tpl->set_var("SYSADMINMENU","");			
		}
		else
		{ 
			$this->tpl->parse("LOGINMENU","LoginMenu");
			$this->tpl->set_var("LOGOUTMENU","");
			$this->tpl->set_var("MENU","");
			$this->tpl->set_var("SYSADMINMENU","");
		}		
		foreach ($GLOBALS["arr_languages"] as $index_language=>$lang)
		{				
			$this->tpl->set_var(array("INDEX_LANGUAGE"=>$index_language,"LANGUAGE"=>$lang["language"]));
			if($_COOKIE["INDEX_LANGUAGE"]==$index_language)
				$this->tpl->set_var("SELECTED_LANGUAGE","selected");
			else
				$this->tpl->set_var("SELECTED_LANGUAGE","");
			$this->tpl->parse("ROW_LANGUAGE","row_language",true);
		}
	}
	function IsLogin()
	{
		//Виясняє чи є користувач викладачем 		
		$id = $this->GetID_TE();
		$this->query("SELECT ID_TE FROM teachers WHERE ID_TE = $id;");
		if($this->next_record())
			return true;
		else
			return false;
	}
	
	function IsSysAdmin()
	{
	//	Виясняє чи є у викладача всі права 		
		$id = $this->GetID_TE();
		$this->query("SELECT SysAdmin FROM teachers WHERE ID_TE = $id AND SysAdmin='Y';");
		if($this->next_record())    	 		
			return true;    	
		else 
			return false;
	}
	function IsGroupCreator()
 	{
 		//Виясняє чи є у викладача права створювати нові групи групи 		
 		$id = $this->GetID_TE();
    	$this->query("SELECT GroupCreator,GroupAdmin,SysAdmin from teachers where ID_TE = $id and (GroupCreator = 'Y' OR SysAdmin = 'Y' OR GroupAdmin = 'Y');");
    	if($this->next_record())
    	   	return true;
    	else 
    		return false;
 	}
 	function IsGroupAdmin()
 	{
 		//Виясняє чи є у викладача права адміністрування груп 		
 		$id = $this->GetID_TE();
		$this->query("select GroupAdmin,SysAdmin from teachers where ID_TE = $id and (SysAdmin = 'Y' OR GroupAdmin = 'Y');");
		if($this->next_record())
    	   		return true;
		else 
			return false;
 	}
 	function IsTestCreator()
 	{
 		//Виясняє чи є у викладача права створення тестів 		
 		$id = $this->GetID_TE();
		$this->query("SELECT TestCreator,TestAdmin,SysAdmin FROM teachers WHERE ID_TE = $id and (TestCreator = 'Y' OR SysAdmin = 'Y' OR TestAdmin = 'Y');");
		if($this->next_record())
			return true;
		else 
			return false; 	
 	}
 	function IsTestAdmin()
 	{
 		//Виясняє чи є у викладача права адміністрування тестів 		
 		$id = $this->GetID_TE();
		$this->query("select TestAdmin,SysAdmin from teachers where ID_TE = $id and (SysAdmin = 'Y' OR TestAdmin = 'Y');");
		if($this->next_record())
			return true;
		else 
			return false;
 	
 	} 	
 	function IsTestExist($ID_TEST)
	{
		$Sql=sprintf("SELECT ID_TEST FROM tests WHERE ID_TEST = '%d';",
					$ID_TEST);
		$this->query($Sql);
		return $this->next_record();
	}
	function CheckLogin($TEName, $USPass)
	{
		//Перевірка паролю при вході в систему    	
		$USPass = $this->PreparePass($USPass);
		$TEName=$this->PrepareString($TEName);
		$this->query("select * from teachers where TEName = '$TEName' and USPass = '$USPass';");
		if($this->next_record())
		{    		
			$_SESSION["__ID_TE__"]=intval($this->f("ID_TE"));
			return true;
		}
		else 
		{
			return false;
		}
	}
	function ChangePass($OldUSPass, $NewUSPass)
	{	
		//Зміна паролю самим користувачем    	
		$id = $this->GetID_TE();
		$OldUSPass = $this->PreparePass($OldUSPass);
		$NewUSPass = $this->PreparePass($NewUSPass);
		$this->query("SELECT * FROM teachers WHERE ID_TE = $id AND USPass = '$OldUSPass';");
		if($this->next_record()) 
		{
			return $this->query("UPDATE teachers SET USPass = '$NewUSPass' WHERE ID_TE = $id;");    		
		}
		else
		{
			return false;//коли старий пароль не правильний
		}
	}
	function GetID_TE()
	{    	
		if(empty($_SESSION["__ID_TE__"]))
			return 0;
		else
			return $_SESSION["__ID_TE__"];
	}
	function LogOut()
	{    
		unset($_SESSION["__ID_TE__"]);
		//session_unset();
		//session_destroy();
	}
	function CanUseGroup($ID_GR)
	{
		if($this->IsGroupAdmin())
		{
			return true;
		}
		$sql=sprintf("SELECT * FROM group_priv WHERE ID_GR = '%d' AND ID_TE='%d';",
					$ID_GR,$this->GetID_TE());	
 		$this->query($sql);
		if($this->next_record())
		{
			return true;
		}
		return false;	
	}
    
	function CanChangeGroup($ID_GR)
	{		
		if($this->IsGroupAdmin())
		{
			return true;
		}
		$sql=sprintf("SELECT * FROM group_priv WHERE ID_GR = '%d' AND ID_TE='%d' AND (CanAdmin='Y' OR CanChange='Y')",
					$ID_GR,$this->GetID_TE());
 		$this->query($sql);
		if($this->next_record())
		{
			return true;
		}		
		return false;		
	}
	function CanAdminGroup($ID_GR)
	{
		if($this->IsGroupAdmin())
		{
			return true;
		}
		$sql=sprintf("SELECT * FROM group_priv WHERE ID_GR = '%d' AND ID_TE='%d' AND CanAdmin='Y'",
					$ID_GR,$this->GetID_TE());
 		$this->query($sql);
		if($this->next_record())
		{
			return true;
		}		
		return false;
	}
	
	function CanUseTest($ID_TEST)
	{
		if($this->IsTestAdmin())
		{
			return true;
		}
		$sql=sprintf("SELECT * FROM test_priv WHERE ID_TEST = '%d' AND ID_TE='%d';",
					$ID_TEST,$this->GetID_TE());	
 		$this->query($sql);
		if($this->next_record())
		{
			return true;
		}
		return false;	
	}	
	function CanChangeTest($ID_TEST)
	{
		if($this->IsTestExist($ID_TEST))
		{
			if($this->IsTestAdmin())
			{
				return true;
			}
			$sql=sprintf("SELECT * FROM test_priv WHERE ID_TEST = '%d' AND ID_TE='%d' AND (CanAdmin='Y' OR CanChange='Y');",
						$ID_TEST,$this->GetID_TE());
 			$this->query($sql);
			if($this->next_record())
			{
				return true;
			}
		}
		return false;		
	}
	
	function CanAdminTest($ID_TEST)
	{	
		if($this->IsTestExist($ID_TEST))
		{	
			if($this->IsTestAdmin())
			{
				return true;
			}
			$sql=sprintf("SELECT * FROM test_priv WHERE ID_TEST = '%d' AND ID_TE='%d' AND CanAdmin='Y';",
						$ID_TEST,$this->GetID_TE());
	 		$this->query($sql);
			if($this->next_record())
			{
				return true;
			}
		}
		return false;	
	}
}
?>