{include file=header.tpl}
{literal}
<script type="text/javascript">
<!--
function check_index(){
	if (document.LoginForm.STName.value==''){
		alert("Введено порожнє ім\'я!!!");
		document.LoginForm.STName.select();
		return false;
	}
	if (document.LoginForm.ID_GR.value==0){
		alert("Не вибрано групу!!!");
		return false;
	} 
	document.LoginForm.action="generate1.php";
	return true;
}
function SelectLanguage()
{		
	var today = new Date();
	var exp = new Date();
	exp.setTime(today.getTime() + 365*24*60*60*1000);
	document.cookie = "INDEX_LANGUAGE="+document.getElementById('language').value+ "; expires=" + exp.toGMTString();	
	document.location=document.location;	
	return false;
}

// -->
</script>
{/literal}
Виберіть мову
<select name="language" id="language" onchange="return SelectLanguage();">
{html_options output=$languages values=$index_languages selected=$id_selected_language}
</select>
<form action="" method="POST" name="LoginForm" onsubmit="return check_index()">
<input type="hidden" name="ID_TEST" value="{$ID_TEST}"/>
<hr />
Група:<br />
<select name="ID_GR" onchange="javascript:document.location = 'index1.php?ID_TEST={$ID_TEST}&ID_GR='+document.LoginForm.ID_GR.value">
<option value=0>Виберіть групу</option>
{html_options output=$GrName values=$ID_GR selected=$ID_GR_SELECTED}
</select><br />
Ім'я:<br />
<select name="STName">
<option value="">Виберіть ім'я</option>
{html_options output=$STName values=$STName}
</select>
<br />
Введіть пароль:<br />
<input type="password" value="" name="STPass" size="50" maxlength="40"><br />
<hr />
<input type="submit" value="   Далі   " />
<input type="reset" value="Очистити" />
</form>
{include file=footer.tpl}