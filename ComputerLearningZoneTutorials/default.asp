<!DOCTYPE html>
<html>

<% 'Part 2 %>

Hello there.

The time is <%=Time()%>
The date is <%=Date()%>

<%
'Part 3

response.write "<P>The time is " & Time()

X = 5
if X > 8 then
	response.write "<P> X is greater then 8 <P>"
else
	response.write "<P> X is not greater then 8 <P>"
end if


' Calculate current hour
X = DatePart("h",Time())
response.write "The hour is " & X & "<P>"

If X >= 12 then
	response.write "<a href=""https://www.google.com""><b>Good</b> afternoon!</a>"
else
	response.write "<a href='https://www.google.com'><b>Good</b> morning!</a>"
end if


%>


<body>

</body>
</html>