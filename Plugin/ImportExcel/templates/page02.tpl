{literal}
<script type="text/javascript">
<!--
function CheckSheetAndTestForm()
{
	var bRes = false;
	if(document.SheetAndTestForm.boundsheet.value==-1)
	{
		alert("�� ������� ����!");
	}
	else if(document.SheetAndTestForm.ID_TEST.value==0)
	{
		alert("�� ������� test!");
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
�� ���� ��������� ���� ��� ����������� ������ �����</br>
����: "{$file_name}"</br>
<a href="page01.php" >���������� ��� ���</a>
{else}
��� �����: {$file_name}
<form action="" method="GET" name="SheetAndTestForm" onsubmit="return CheckSheetAndTestForm();">
����: 	
	<select name="boundsheet" id="boundsheet">
		<option value="-1">������� ����</option>
		{html_options values = $boundsheet_index output = $boundsheet_name selected = $boundsheet_index_selected}	
	</select><br />
����:
	<select name="ID_TEST" id="ID_TEST">
		<option value="0">������� ����</option>		
		{html_options values = $IDs_TEST output = $TestsName}	
	</select><br />
	<button type="submit">������</button>
</form>
{/if}
{include file="footer.tpl"}

