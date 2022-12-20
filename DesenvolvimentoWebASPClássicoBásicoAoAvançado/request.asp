Exemplo Request.ServerVariables
<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
response.Charset = "utf-8" 
response.ContentType = "text/html"
%> 

<br><br>
<%=Request.ServerVariables("SERVER_NAME")%>
<br>
<%=Request.ServerVariables("PATH_INFO")%>
<br>
<%=Request.ServerVariables("REMOTE_HOST")%>

<br>
<a href="request.asp?Curso=Desenvolvimento Web&Modulo=Curso ASP">link teste</a>

<%
curso = Request.querystring("Curso")
modulo = Request.querystring("Modulo")

response.write "<br>Curso: "&curso
response.write "<br>Módulo: "&modulo

%>

<br>=================================<br>
<form method="post" action="request.asp">
	Nome:<input type="text" name="nome"><br>
	E-mail:<input type="text" name="email"><br><br>
	<input type="submit" name="Enviar">
</form>
<br><br>

<%
	response.write(Request.form("nome"))&"<br>"
	response.write(Request.form("email"))
%>

<br>
<br>=================================
List Box e Radio Button
<br><br>

<form method="post" action="request.asp">
	Cliente
	<select name="cliente">
		<option value=1>Maria</option>
		<option value=2>João</option>		
		<option value=3>Pedro</option>		
	</select>

	<br>

	Masculino
	<input type="radio" name="sexo" value="Masculino">
	Feminino
	<input type="radio" name="sexo" value="Feminino">

	<input type="submit" name="Enviar List">
</form>

<%
	response.write Request.form("cliente")& "<br>"
	response.write Request.form("sexo")
%>