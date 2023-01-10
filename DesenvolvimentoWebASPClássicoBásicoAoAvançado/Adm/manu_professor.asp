<br>
<!--#include file="../../caracteres_utf8.asp"-->  
<!--#include file="funcoes.asp"-->
<!--#include file="wpg_cnx.asp"-->
<%
session.LCID = 1046
'RECEBENDO CAMPOS DO FORMULÁRIO
opc          = request.querystring("opc")
botao        =  request.form("botao")
cod          =  request.form("hfcod")
nome         =  request.form("nome")
cpf          =  request.form("cpf")
foto         =  request.form("foto")
email        =  request.form("email")
nascimento   =  request.form("nascimento")
endereco     =  request.form("endereco")
cidade       =  request.form("cidade")
curriculo    =  request.form("curriculo")



if botao = "Incluir" then
' INCLUINDO OS DADOS RECEBIDOS NA TABELA

   sql = "insert into tb_professor (ds_professor,cpf,data_nascimento,endereco,cidade,curriculo,email,foto)"
   sql = sql & " values('"&nome&"','"&cpf&"','"&data_banco(nascimento)&"','"&endereco&"','"&cidade&"','"&curriculo&"','"&email&"','"&foto&"')"
'   response.write sql
'   response.end
   conexao.execute(sql)
%>
<script>
    alert("Professor incluído com sucesso!")
    parent.location = "cst_professor.asp"
</script>
<%
elseif botao = "Alterar" then
' ALTERANDO OS DADOS RECEBIDOS NA TABELA

'  sql = "update TABELA set"
'  sql = sql & " CAMPO1 = '"&variavel1&"',"
'  sql = sql & " CAMPO2 = '"&variavel2&"'"  
'  sql = sql & " where codigo = "&cod
'response.write sql
'response.end
'  conexao.execute(sql)
%>
<script>
    alert("Dados alterado com sucesso!")
    parent.location = "cst_modelo.asp"
</script>
<%
elseif opc <> "" then
' DELETANDO REGISTRO SELECIONADO
'   cod = request.querystring("cod")
'   sql = "delete from TABELA where CODIGO="&cod
'  response.write sql
'  response.end
'   conexao.execute(sql)
%>
<script>
    alert("Linha exclu�da com sucesso!")
    parent.location = "cst_modelo.asp"
</script>
<%
end if
%>