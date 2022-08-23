<br>
<form>
  <div>
    <label> Digite o valor A</label>
    <input type="Number" name="A">
  </div>
  <div>
    <label> Digite o valor de B</label>
    <input type="Number" name="B">
  </div>
  <div>
    <input type="submit" value="OK">
  </div>
</form>
<br>
<%

dim X2
X2 = null
if Request.QueryString("A") = "" or Request.QueryString("B") = ""  then
  response.write("Digite os valores de A e B")
else
  A = CInt(Request.QueryString("A"))
  B = CInt(Request.QueryString("B"))
  call sum(A,B)
  X2 = sum2(A,B)
end if

sub sum(A,B)
  if A = null or B = null then
    'response.write("Digite os valores de A e B")
  else
    X = A + B
    response.write("X =")
    response.write(X)
  end if
end sub

if X2 = null then
  'response.write("Digite os valores de A e B")
else
  %> <br> <%
  response.write("X =")
  response.write(X2)
end if

function sum2 (A,B)
  if A = null and B = null then
    res = null
  else
      res = A + B
  end if
  sum2 = res
  end function
%>