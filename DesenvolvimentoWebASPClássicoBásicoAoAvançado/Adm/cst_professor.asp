<!--#include file="../../caracteres_utf8.asp"-->  
<!--#include file="topo.asp"-->  
<!--#include file="wpg_cnx.asp"-->  
<%

sql = "select * from tb_professor order by ds_professor"
set rs = conexao.execute(sql)

%>
  <script>
function Excluir(cod)
   {
	 if(confirm("Confirma exclusão?"))
	  {
	    parent.location = "manu_modelo.asp?opc=exc&cod=" + cod ;
      }
   
   } 
 	
 </script>

<div class="container">
<form action="frm_professor.asp" method=post>
<button type="submit" class="btn btn-primary">Adicionar</button>

  <h4>Professor</h4>
  <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>#</th>
        <th>Nome</th>
        <th>CPF</th>
        <th>Data de nacimento</th>
        <th>E-mail</th>
        <th>#</th>		
      </tr>
    </thead>
    <tbody>
<%
'AQUI COMEÇA O DO WHILE ONDE TRARÁ AS LINHAS DE ACORDO COM O SELECT FEITO
do while not rs.eof%>
      <tr>
        <td>
 <a href="frm_modelo.asp?evt=alt&cod=<%=rs("cd_professor")%>">
<img src="imagens/alt.jpg">
        </a>		
		</td>
        <td><%=rs("ds_professor")%></td>
        <td><%=rs("cpf")%></td>
        <td><%=rs("data_nascimento")%></td>
        <td><%=rs("email")%></td>
        <td>
 <a href="javascript:Excluir(<%=rs("cd_professor")%>)">
 <img src="imagens/excluir.jpg">
        </a>		
		</td>

      </tr>
<%
'LOOP DEPOIS DA LINHA PARA QUE SE REPITA ENQUANTO TIVER REGISTROS NO SELECT FEITO
rs.movenext
loop
%>	  
    </tbody>
  </table>

  </div>
</form>

</div>
</body>
</html>