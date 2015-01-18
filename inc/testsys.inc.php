<?php
include_once "db_mysql.inc";
include_once "template.inc";
include_once "Smarty/Smarty.class.php";	
//do not change this constants!
define ("CORRECT",0);
define ("INCORRECT",1);
// Закритого типу з одним варіантом відповіді
define ("Q_TYPE1",1);
// Закритого типу з декількома варіантами відповіді
define ("Q_TYPE2",2);
// Відкритого типу, де студент вказує свій варант відповіді
define ("Q_TYPE3",3);
// Завдання на встановлення послідовності
define ("Q_TYPE4",4);
// завдання на відповідність
define ("Q_TYPE5",5);
define ("Q_TYPE_MAX", Q_TYPE5);

//-------------------------------
//this constants can be changed
define ("LEVEL_MAX",3);//Максимальна к-сть рівнів
define ("ANSWER_COUNT_DEFAULT",5);
define ("ANSWER_COUNT_MAX",8);
define("PASS_MARK",2);// Оценка при которой тест считается пройденым
define("MAX_MARK", 5);// Максимальная оценка за тест
define ("USE_SPAW",true);// Использовать SPAW
define ("Q_TYPE1_LIKE_Q_TYPE2",false);

//The parament USE_TRANSACTION defined how to use transaction
//if USE_TRANSACTION is true, scripts use START TRANSACTION and COMMIT. For example, it can be used for INNODB table type;
//if USE_TRANSACTION is false, scripts use LOCK TABLES ... and UNLOCK TABLES. For example, it can be used for MyISAM table type;
define ("USE_TRANSACTION",true);
//Connection parametr
define("TESTY_USER","root");
define("TESTY_PASSWORD","");
define("TESTY_HOST","localhost");
define("TESTY_DATABASE","testy_1_1_3_demo");

if(ANSWER_COUNT_DEFAULT>ANSWER_COUNT_MAX)
{
	die("error ANSWER_COUNT_DEFAULT>ANSWER_COUNT_MAX");
}
class CTestSys extends DB_Sql
{
	var $User=TESTY_USER;
	var $Password=TESTY_PASSWORD;
	var $Host=TESTY_HOST;
	var $Database=TESTY_DATABASE;
	/**
	* @return string
	* @param string $str
	* @desc Готує рядок для запису в БД.
	*/
	function PrepareString($str)
	{	
		if(!ini_get("magic_quotes_gpc"))
			return addslashes(trim($str));
		else
			return trim($str);
	}
	function PreparePass($pass)
	{	
		if(!ini_get("magic_quotes_gpc"))
			return md5($pass);
		else
			return md5(stripslashes($pass));
	}
	function IsYN($str)
	{
		return preg_match("/^(Y|N)$/",$str);
	}
}  
//language
$arr_languages = array(
				0=>array("path"=>"tpl_original_ukr","language"=>"Ukrainian win1251"),
				1=>array("path"=>"tpl_original_rus","language"=>"Russian win1251"),
				//2=>array("path"=>"tpl_english","language"=>"English")
				);
define("DEFAULT_INDEX_LANGUAGE",0);
if(	!isset($_COOKIE["INDEX_LANGUAGE"]) || 
	!isset($arr_languages[$_COOKIE["INDEX_LANGUAGE"]]) || 
	!is_dir("language/".$arr_languages[$_COOKIE["INDEX_LANGUAGE"]]["path"]))
{
	setcookie("INDEX_LANGUAGE",DEFAULT_INDEX_LANGUAGE,time()+365*24*60*60);
	if( !isset($_COOKIE["INDEX_LANGUAGE"]) )
		$_COOKIE["INDEX_LANGUAGE"] = DEFAULT_INDEX_LANGUAGE;//Мухльож але нічого
}
// TestMaker Config
define("TESTMAKER_TPL_DIR","language/".$arr_languages[$_COOKIE["INDEX_LANGUAGE"]]["path"]);
?>