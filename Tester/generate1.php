<?
include_once "../inc/tester.inc.php";
$StName=empty($_POST["STName"])?(""):($_POST["STName"]);
$StPass=empty($_POST["STPass"])?(""):($_POST["STPass"]);
$tester=new CTester();
if($tester->CheckLogin($StName,$StPass))
{
	include("generate.php");
}
?>