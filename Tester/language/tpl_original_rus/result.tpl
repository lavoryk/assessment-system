{include file=header.tpl}
<table border="2" bordercolordark=ffffff bordercolor="dedede" cellpadding="2" cellspacing="2" align="center">
<caption>Результаты тестирования</caption>
<tr><td>Имя</td><td><a class=data> {$STNAME} </a></td></tr>
<tr><td>Группа</td><td><a class=data> {$GRNAME} </a></td></tr>
<tr><td>Название теста/блока тестов</td><td><a class=data> {$TESTNAME} </a></td></tr>
<tr><td>Результат</td><td><a class=data> {$RESULT} из {$MAX_RESULT} </a></td></tr>
</table>
{$TASK_BODY}<br />
<button type="button" onclick="window.close();">Закрыть окно</button>
{include file=footer.tpl}