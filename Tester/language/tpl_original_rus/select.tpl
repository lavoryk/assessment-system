{include file=header.tpl}
{literal}
<script type="text/javascript">
<!--
function CheckSelectForm()
{
      if (document.SelectForm.ID_TEST.value<=0)
      {
         alert('�� ������ ���� ��� ����� ������ !');
         return false;
      }
      else
      {
         document.SelectForm.action='generate.php';
         return true;
      }
}
function set_T_TB(tb)
{
	var t_n		= new Array();
	var t_id	= new Array();
	t_n[0]		= new Array();
	t_id[0]		= new Array();
	t_n[1]		= new Array();
	t_id[1]		= new Array();
	t_n[0][0]	= "�������� ����";
	t_id[0][0]	= 0;
	t_n[1][0]	= "�������� ���� ������";
	t_id[1][0]	= 0;
{/literal}
{section name=tests loop=$ID_TEST}
	t_id[{$IND1[tests]}][{$IND2[tests]}]={$ID_TEST[tests]};
	t_n[{$IND1[tests]}][{$IND2[tests]}]="{$TestName[tests]}";	
{/section}
{literal}
	for (var i=document.SelectForm.ID_TEST.options.length;i>0;i--)
	{
          document.SelectForm.ID_TEST.options[i]=null;
	}
	for (var i=0;i<t_id[tb].length;i++)
	{
          document.SelectForm.ID_TEST.options[i]= new Option(t_n[tb][i],t_id[tb][i]);
	}
}
-->
</script>
{/literal}
{if $incorrectnameorpass}
	������� ������� <a class=data> ��� </a> ��� ��������� ������ ��� <a class=data> ������ </a> !!!<br>
	<a href="index.php">��������� �������.</a>
{else}
	<form action="" target="tester_main_1" method="POST" name="SelectForm" onsubmit="return CheckSelectForm()">
	���� ���: <a class=data> {$STName} </a><br />
	������ : <a class=data> {$GrName} </a><br />
	<input type="radio" name="tb" value="0" onClick="set_T_TB(0)">����
	<input type="radio" name="tb" value="1" onClick="set_T_TB(1)">���� ������<br />
	<select name="ID_TEST">
	<option value=0 selected="selected">�������� ���� ��� ���� ������</option>
	</select><br />
	<hr />
	<input type="submit" value="   Ok   " />
	</form>
	<a href="index.php">� ������ ������ �� ��������� ����� "���" � "������" ������� �����.</a>
{/if}
{include file=footer.tpl}