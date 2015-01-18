<?php
include("../inc/testmaker.inc.php");
$obj=new CTestMaker();
if(!$obj->IsLogin())
{
	header("location:index.php");
}
else 
{
	$obj->PreparePageMenu();
	$obj->tpl->set_file("plugin","plugin.html");
	$obj->tpl->set_block("plugin","plugin_row","PLUGINS_ROWS");	
	$dir = "../Plugin/";
	// Open a known directory, and proceed to read its contents
	$num = 1;
	if (is_dir($dir))
	{
    	if ($dh = opendir($dir))
    	{
        	while (($file = readdir($dh)) !== false)
        	{
        		if(filetype($dir . $file) == "dir")
        		{
        			unset($plugin_info);
        			@include_once($dir . $file."/info.php");
        			if(isset($plugin_info) && is_array($plugin_info))
        			{        				
        				$obj->tpl->set_var(array(	"num"=> $num,
        											"short_name" => $plugin_info["short_name"],
        											"author" => $plugin_info["author"],
        											"description" => $plugin_info["description"],
        											"index_file" => $dir.$file."/".$plugin_info["index_file"]
        											)
        									);
        				$obj->tpl->parse("PLUGINS_ROWS", "plugin_row", true);
        				++$num;
        			}        			
        		}            	
        	}
    		closedir($dh);
    	}
	}	
	if($num == 1)
	{
		$obj->tpl->set_var("PLUGINS_ROWS", "");
	}
	$obj->tpl->parse("CONTENT","plugin");
	$obj->tpl->parse("OUT","common");
	$obj->tpl->p("OUT");
}