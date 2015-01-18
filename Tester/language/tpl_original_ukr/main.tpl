{include file=header.tpl}
<script type="text/javascript">
{literal}
<!--
	setTimeout("check_time()",1000);
	var canGetResult=true;
	function GetResult(){
		document.FormTask.action='result.php';
		document.FormTask.submit();		
	}
	function UloadPage()
	{
		if(canGetResult)
		{
			window.open('result.php', 'tester_main_res_1', 'toolbar=no, location=no, directories=no, status=yes, menubar=no, scrollbars=yes, resizable=yes, width=800, height=600');
		}
		return true;
	}
	function TheEnd(){
		if (window.confirm('Ви впевненi, що хочите отримати оцiнку?'))
		{
			GetResult();
		}
		return true;
	}
	function check_time(){
		if (document.FormTask.r_t_time.value<=0)
		{
			GetResult();
		}
		else
		{
			document.FormTask.r_t_time.value--;
			document.FormTask.r_t_sec.value=document.FormTask.r_t_time.value%60;
			document.FormTask.r_t_min.value=Math.floor(document.FormTask.r_t_time.value/60);                 
			setTimeout("check_time()",1000);
		}
	}
	
var $counter = 0;
function right(e)
{
	if (navigator.appName == 'Netscape' && (e.which == 3 || e.which == 2))
	{
		return false;
	}
	else if (navigator.appName == 'Microsoft Internet Explorer' && (event.button == 2 || event.button == 3))
	{
		$counter = $counter + 1;
		if ( $counter == 3 )
		{
			alert ( "ВСЕ!" );
			document.location="result.php";
		}
		else
		{
			alert ("Під час здачі екзамену натиснення правої кнопки миші заборонено. Якщо це повторится, для вас тест БУДЕТ ЗАКІНЧЕНИЙ. Буде виставлена Ваша поточна оцінка.");
		}
		return false;
	}
	return true;
}
document.onmousedown=right;
if (document.layers)
{
	window.captureEvents(Event.MOUSEDOWN);
}
window.onmousedown=right;
function moveAnswer(index, direction)
{
	var element0 = document.getElementById(index);
	var element1 = document.getElementById(index-direction);
	var idValue0 = document.FormTask.elements["SCV[" + index + "]"];
	var idValue1 = document.FormTask.elements["SCV[" + (index - direction) + "]"];
	if (element0 && element1)
	{
		var tmp = element0.innerHTML;
		element0.innerHTML = element1.innerHTML;
		element1.innerHTML = tmp;
		var idTmp = idValue0.value;
		idValue0.value = idValue1.value;
		idValue1.value = idTmp;
	}
	return true;
}
 -->
</script>
{/literal}
<form name="FormTask" action="main.php" method="POST">
Ім'я студента: <a class=data> {$STNAME} </a><br />
Група: <a class=data> {$GRNAME} </a><br />
Назва тесту: <a class=data> {$TESTNAME} </a><br />
{$N_CURRENT} завдання з {$N_MAX}<br />
Вартість завдання {$POINT} бал(ів).
До кінця залишилось: <input type="text" name="r_t_min" value="{$R_T_MIN}" size="2" readonly> хвилин 
<input type="text" name="r_t_sec" value="{$R_T_SEC}" size="2" readonly > секунд. <br><br>
  <table width="95%" border="2" bordercolordark=ffffff bordercolor="dedede" cellpadding="2" cellspacing="2" align="center"> 
    <tr align="center">
      <td colspan="2" class=block> Завдання </td>
    </tr>
    <tr>
      <td colspan="2" height="40" align="center" valign="middle"> {$Q_BODY}</td>
    </tr>
    <tr align="center">
{if $Q_TYPE == 1 || $Q_TYPE == 2}
      <td colspan="2" height="30">Варіанти відповідей </td>
{elseif $Q_TYPE == 3}
      <td colspan="2" height="30">Ведіть відповідь </td>
{/if}
    </tr>
{section name = answer_row loop = $A_BODY}
    <tr>
    {if $Q_TYPE == 1 || $Q_TYPE == 2}
      <td width="3%">
        <input type="{$INPUT_TYPE}" name="SCV{$FOR_CHEKBOX[answer_row]}" value="{$SCV_VALUE[answer_row]}" {$CHECKED[answer_row]} />
      </td>
      <td width="97%">{$A_BODY[answer_row]}</td>
    {elseif $Q_TYPE == 3}
      <td width="100%" colspan="2">
        <input type="text" name="SCV" value="{$SCV_VALUE[answer_row]}" size="100%" />
      </td>
    {elseif $Q_TYPE == 4}
    <td><button onclick="return moveAnswer({$smarty.section.answer_row.index}, +1)">вверх</button><br /><button onclick="return moveAnswer({$smarty.section.answer_row.index}, -1)">вниз</button></td>
    <input type="hidden" name="SCV[{$smarty.section.answer_row.index}]" value="{$smarty.section.answer_row.index}" />
    <td width="97%"><div id="{$smarty.section.answer_row.index}">{$A_BODY[answer_row]}</div></td>
    {elseif $Q_TYPE == 5}
    <td width="10%">
    <select name="SCV[{$smarty.section.answer_row.index}]">
    <option value="-1">Виберіть варіант.</option>
    {html_options values=$ID_AN output=$A_SECOND_BODY selected=$SCV_VALUE[answer_row]}}
    </select>
    </td>
    <td width="90%">{$A_BODY[answer_row]}</td>
    {/if}
    </tr>
{/section}    
  </table>
<input type="hidden" name="N_Move" value="0" />
<input type="hidden" name="r_t_time" value="{$R_T_TIME}" />
<br />
<table align="center" width="80%" >
    <tr>
      <td align="left"><button type="submit" onclick="canGetResult=false;return (document.FormTask.N_Move.value={$PrevIndex});" {$DISABLED_PREV}> 
        << Prev</button> </td>      <td align="right"><button type="submit" onclick="canGetResult=false;return (document.FormTask.N_Move.value={$NextIndex});" {$DISABLED_NEXT}> 
        Next >></button> </td>
</tr>
<tr><td colspan="2" align="center">
<button type="button" onclick="canGetResult=false;return TheEnd();">Закінчити тестування</button>
</td></tr>
</table>
</form>
{include file=footer.tpl}