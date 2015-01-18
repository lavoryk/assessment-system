{literal}
<script type="text/javascript">
<!--
function CheckSheetAndTestForm()
{
	var bRes = false;
	if(document.SheetAndTestForm.boundsheet.value==-1)
	{
		alert("Не выбрана лист!");
	}
	else if(document.SheetAndTestForm.ID_TEST.value==0)
	{
		alert("Не выбрана test!");
	}
	else
	{			
		document.SheetAndTestForm.action = "page03.php";
		bRes = true;
	}
	return bRes;
}
-->
</script>
{/literal}
{include file="header.tpl"}
{if $error}
Не могу прочитать файл или неизвестный формат файла</br>
Файл: "{$file_name}"</br>
<a href="page01.php" >Попробуйте еще раз</a>
{else}
Имя файла: {$file_name}
<form action="" method="GET" name="SheetAndTestForm" onsubmit="return CheckSheetAndTestForm();">
Лист: 	
	<select name="boundsheet" id="boundsheet">
		<option value="-1">Укажите лист</option>
		{html_options values = $boundsheet_index output = $boundsheet_name selected = $boundsheet_index_selected}	
	</select><br />
Тест:
	<select name="ID_TEST" id="ID_TEST">
		<option value="0">Укажите тест</option>		
		{html_options values = $IDs_TEST output = $TestsName}	
	</select><br />
	<button type="submit">Дальше</button>
</form>
{/if}
{include file="footer.tpl"}

