<br>
<form>
  <div>
    <label> Digite do raio</label>
    <input name="raio">
  </div>
  <div>
    <input type="submit" value="OK">
  </div>
</form>
<br>
<%
if Request.QueryString("raio") = "" then
  response.write("Digite o valor do raio")
else
  raio = Cdbl(Request.QueryString("raio"))
  response.write("A area do circulo eh: ")
  response.write(areaCirculo(raio))
end if


function areaCirculo(raio)
  dim res
  pi = 3.14159
  res = pi * raio ^ 2
  areaCirculo = formatnumber(res,2)
end function

%>