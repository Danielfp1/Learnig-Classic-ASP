<html>
<body>
	<!--#include file="enunciados/enunciados.asp"-->
<%
	caminho = Split(Request.ServerVariables("SCRIPT_NAME"), "/")
    nomeDoArquivo = caminho(UBound(caminho))
    nomeDoArquivo = Replace(nomeDoArquivo,".asp",".txt")
	Enunciado(nomeDoArquivo)

	response.write("Hello World!")
%>
</body>
</html>