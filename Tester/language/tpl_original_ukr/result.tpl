{include file=header.tpl}
<table border="2" bordercolordark=ffffff bordercolor="dedede" cellpadding="2" cellspacing="2" align="center">
<caption>���������� ����������</caption>
<tr><td>��'�</td><td><a class=data> {$STNAME} </a></td></tr>
<tr><td>�����</td><td><a class=data> {$GRNAME} </a></td></tr>
<tr><td>����� �����/����� ����i�</td><td><a class=data> {$TESTNAME} </a></td></tr>
<tr><td>���������</td><td><a class=data> {$RESULT} � {$MAX_RESULT}</a></td></tr>
</table>
{$TASK_BODY}<br />
<button type="button" onclick="window.close();">�������</button>
{include file=footer.tpl}