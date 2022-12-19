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