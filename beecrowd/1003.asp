<br>
<form>
  <div>
    <h1>Produto Simples</h1>
  </div>
  <div>
    <label> Digite o valor A</label>
    <input name="A">
  </div>
  <div>
    <label> Digite o valor de B</label>
    <input name="B">
  </div>
  <div>
    <input type="submit" value="OK">
  </div>
</form>
<br>
<%
if Request.QueryString("A") = "" or Request.QueryString("B") = ""  then
  response.write("Digite os valores de A e B")
else
  A = Cdbl(Request.QueryString("A"))
  B = Cdbl(Request.QueryString("B"))
  dim PROD
  PROD = pro(A,B)
  response.write("PROD = ")
  response.write(PROD)
end if


function pro (A,B)
  dim res
  if A = null and B = null then
    res = null
  else
      res = A * B
  end if
  pro = res
  end function
%>