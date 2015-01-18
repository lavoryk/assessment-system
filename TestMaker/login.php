<?php
	include("../inc/testmaker.inc.php");
	$name = isset($_POST['name'])?strval($_POST['name']):"";
	$pass = isset($_POST['pass'])?strval($_POST['pass']):"";
	$name=substr($name,0,35);
	$pass=substr($pass,0,32);
	$obj = new CTestMaker();
	/*Перевірка з якого домену було здійсна авторизація
	//проти підбору пароля
	if($Login_allow_host)
	{
		$referer=getenv("HTTP_REFERER");
		if(@!ereg($Login_allow_host, $referer))
		{
			echo "Вхід неможливий";
			exit;
		}
	}*/
	if($obj->CheckLogin($name, $pass) && isset($_POST['submit']))
	{
		header("location:index.php");
	}
	else
	{
		$obj->PreparePageMenu();
		$obj->tpl->set_file("login","login.html");
		$obj->tpl->set_var("NAME",$name);
		$obj->tpl->parse("CONTENT","login");
		$obj->tpl->parse("OUT","common");
		$obj->tpl->p("OUT");
		$obj->LogOut();
	}	
?>