<?php
include("../inc/testmaker.inc.php");
$obj = new CTestMaker();
/*
��� ����
*/
$content = "<div class='caption'>&bull; Welcome.</div>";
if($obj->IsLogin())
{
	$content .= "<div class='text'>��������: Lavoryk Ivan, Dzhus Mykola. ����������� ������� Pavel Ustinov, Voinov Alexand</div>";
	$obj->PreparePageMenu();
	$obj->tpl->set_var("CONTENT",$content);
	$obj->tpl->parse("OUT","common");
	$obj->tpl->p("OUT");
}
else
{
	header("location:login.php"); 
}

?>