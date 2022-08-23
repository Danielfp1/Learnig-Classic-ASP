<br>
<form>
  <div>
    <h1>Media 1</h1>
  </div>
  <div>
    <label> Digite o valor 1</label>
    <input name="v1">
  </div>
  <div>
    <label> Digite o valor 2</label>
    <input name="v2">
  </div>
  <div>
    <input type="submit" value="OK">
  </div>
</form>
<br>
<%
if Request.QueryString("v1") = "" or Request.QueryString("v2") = ""  then
  response.write("Digite os valores 1 e 2")
else
  A = Cdbl(Request.QueryString("v1"))
  B = Cdbl(Request.QueryString("v1"))
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
      res = A + B
      res = res / 2
  end if
  calcularMedia = res
  end function
%>