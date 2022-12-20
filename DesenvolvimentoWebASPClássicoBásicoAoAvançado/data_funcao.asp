<html>
<!--#include file="../caracteres_utf8.asp"-->

<title> Data e Funções ASP</title>
===================Trabalhando com Datas===================
<br><br>
<form method="post" action="data_funcao.asp">
    Data: <input type="text" name="data"><br>
    Numero: <input type="text" name="valor"><br><br>
    <input type="submit" value="Calcular">
</form>
<%
    'Cdate converte para tipo data
    data = Request.Form("data")
    numero = Request.Form("valor")


    if data <> "" then
        data = cdate(data)
    %>
    Data: <%=data%> - <%=dataDiaSemana(data)%> <br>
    Adição: <%=data+numero%> - <%=dataDiaSemana(data+numero)%> <br>
    Dia da Semana <%=Weekday(data)%>
    <%
    End If
    
    Function dataDiaSemana(data_s)
        dia_s = Weekday(CDate(data_s))
        Select Case dia_s
            Case "1"
                dia_s = "Domingo"
            Case "2"
                dia_s = "Segunda"
            Case "3"
                dia_s = "Terça"
            Case "4"
                dia_s = "Quarta"
            Case "5"
                dia_s = "Quinta"
            Case "6"
                dia_s = "Sexta"
            Case "7"
                dia_s = "Sábado"
        End Select
        Response.Write dia_s
    End Function
%>