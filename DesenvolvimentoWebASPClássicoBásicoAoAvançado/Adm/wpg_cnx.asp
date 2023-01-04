<%
session.lcid = 1046

'Conectar ao banco de dados MySQL

Set Conexao = Server.CreateObject("ADODB.Connection")
Conexao.Open = "Provider=SQLNCLI11.1;Data Source = localhost; Integrated Security = SSPI;Initial Catalog=BancoSA"
'Response.Write "<center><b>Conectado com sucesso ao banco de dados</b></center>"


%>