{include file=header.tpl}
<table border="2" bordercolordark=ffffff bordercolor="dedede" cellpadding="2" cellspacing="2" align="center">
<caption>Результати тестування</caption>
<tr><td>Ім'я</td><td><a class=data> {$STNAME} </a></td></tr>
<tr><td>Група</td><td><a class=data> {$GRNAME} </a></td></tr>
<tr><td>Назва тесту/блоку тестiв</td><td><a class=data> {$TESTNAME} </a></td></tr>
<tr><td>Результат</td><td><a class=data> {$RESULT} з {$MAX_RESULT}</a></td></tr>
</table>
{$TASK_BODY}<br />
<button type="button" onclick="window.close();">Закрити</button>
{include file=footer.tpl}