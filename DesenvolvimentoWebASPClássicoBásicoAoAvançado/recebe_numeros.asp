<!--#include file="../caracteres_utf8.asp"-->

Trabalhando com Números e Operações

<form method="post" action="recebe_numeros.asp">
	Valor1: <input type="text" name="valor1"><br>
	Valor1: <input type="text" name="valor2"><br><br>
    <input type="submit" value="Calcular">
</form>
<br>

<%
valor1=cint(request.form("valor1"))
valor2=cint(request.form("valor2"))

if valor1 <> "" and valor2 <> "" then
%>
    Números <%=valor1%> e <%=valor2%> <br>
    <b>Adição: </b> <%=valor1+valor2%> <br>
    <b>Substração: </b> <%=valor1-valor2%> <br>
    <b>Multiplicação: </b> <%=valor1*valor2%> <br>
    <b>Divisão: </b> <%=valor1/valor2%> <br>
<%
end if
%>
<br>

