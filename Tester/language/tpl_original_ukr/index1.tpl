{include file=header.tpl}
{literal}
<script type="text/javascript">
<!--
function check_index(){
	if (document.LoginForm.STName.value==''){
		alert("������� ������ ��\'�!!!");
		document.LoginForm.STName.select();
		return false;
	}
	if (document.LoginForm.ID_GR.value==0){
		alert("�� ������� �����!!!");
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
������� ����
<select name="language" id="language" onchange="return SelectLanguage();">
{html_options output=$languages values=$index_languages selected=$id_selected_language}
</select>
<form action="" method="POST" name="LoginForm" onsubmit="return check_index()">
<input type="hidden" name="ID_TEST" value="{$ID_TEST}"/>
<hr />
�����:<br />
<select name="ID_GR" onchange="javascript:document.location = 'index1.php?ID_TEST={$ID_TEST}&ID_GR='+document.LoginForm.ID_GR.value">
<option value=0>������� �����</option>
{html_options output=$GrName values=$ID_GR selected=$ID_GR_SELECTED}
</select><br />
��'�:<br />
<select name="STName">
<option value="">������� ��'�</option>
{html_options output=$STName values=$STName}
</select>
<br />
������ ������:<br />
<input type="password" value="" name="STPass" size="50" maxlength="40"><br />
<hr />
<input type="submit" value="   ���   " />
<input type="reset" value="��������" />
</form>
{include file=footer.tpl}