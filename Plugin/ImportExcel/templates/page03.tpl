{include file="header.tpl"}
��� �����: {$file_name}
<form action="page04.php" method="GET">
<input type="checkbox" name="ClearTest" /> �������� ���� ����� ��������. ����� �������
���� �������, ����������, ������� � ������ �������<br />
<button type="submit">����������</button>
{section name = questions loop = $Q_Body}
<table border="1">
<!-- <tr><td colspan="2">
 <input type="checkbox" {$checked_ok[questions]} name="is_true[{$smarty.section.questions.index}]"/>������ ����� �������� � Excel-���� �����</td></tr> -->
	<tr><td colspan="2">{$Q_Body[questions]} </td></tr>
	{section name = answers loop = $A_Body[questions]}
	<tr><td><input type="checkbox" {$A_True[questions][answers]} disabled /></td><td>{$A_Body[questions][answers]}</td></tr>
	{/section}
</table>
{/section}
<button type="submit">����������</button>
</form>
{include file="footer.tpl"}