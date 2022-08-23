<br>
<form>
  <div>
    <h1>Media 2</h1>
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
    <input name="c">
  </div>
  <div>
    <input type="submit" value="OK">
  </div>
</form>
<br>
<%
if Request.QueryString("A") = "" or Request.QueryString("B") = "" then
  response.write("Digite os valores A, B e C")
else
  A = Cdbl(Request.QueryString("A"))
  B = Cdbl(Request.QueryString("B"))
  C = Cdbl(Request.QueryString("C"))
  dim MEDIA
  MEDIA = calcularMedia(A,B,C)
  response.write("Media = ")
  response.write(MEDIA)
end if


function calcularMedia(A,B,C)
  dim res
  if A = null and B = null then
    res = null
  else
      res = A * 2 + B * 3 + C * 5
      res = res / 10
  end if
  calcularMedia = formatnumber(res,1)
  end function
%>