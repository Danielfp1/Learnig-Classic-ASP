<br>
<form>
  <div>
    <h1>Media 1</h1>
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
    <input type="submit" value="OK">
  </div>
</form>
<br>
<%
if Request.QueryString("A") = "" or Request.QueryString("B") = ""  then
  response.write("Digite os valores 1 e 2")
else
  A = Cdbl(Request.QueryString("A"))
  B = Cdbl(Request.QueryString("B"))
  dim MEDIA
  MEDIA = calcularMedia(A,B)
  response.write("Media = ")
  response.write(MEDIA)
end if


function calcularMedia(A,B)
  dim res
  if A = null and B = null then
    res = null
  else
      res = A * 3.5 + B * 7.5
      res = res / 11
  end if
  calcularMedia = formatnumber(res,5)
  end function
%>