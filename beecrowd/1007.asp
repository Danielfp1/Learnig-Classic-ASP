<br>
<form>
  <div>
    <h1>Diferenca</h1>
  </div>
  <div>
    <label> Digite o valor 1</label>
    <input name="A">
  </div>
  <div>
    <label> Digite o valor 2</label>
    <input name="B">
  </div>
    <div>
    <label> Digite o valor 3</label>
    <input name="C">
  </div>
    <div>
    <label> Digite o valor 4</label>
    <input name="D">
  </div>
  <div>
    <input type="submit" value="OK">
  </div>
</form>
<br>
<%
if Request.QueryString("A") = "" or Request.QueryString("B") = "" then
  response.write("Digite os valores A, B, C e D")
else
  A = Cint(Request.QueryString("A"))
  B = Cint(Request.QueryString("B"))
  C = Cint(Request.QueryString("C"))
  D = Cint(Request.QueryString("D"))
  dim DIFERENCA
  DIFERENCA = CalcularDiferenca(A,B,C,D)
  response.write("Diferenca = ")
  response.write(DIFERENCA)
end if


function CalcularDiferenca(A,B,C,D)
  dim res
  if A = null and B = null then
    res = null
  else
      res = A * B - C * D
  end if
  CalcularDiferenca = res
  end function
%>