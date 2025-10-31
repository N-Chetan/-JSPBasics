<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition of Two Numbers</title>
</head>
<body>

<!-- Accepting Number from HTML -->
<!-- Use Scriplets Elements for writing Java Statement -->
<%
/* To Get Request data use Implicit Object i,e request*/
int num1 = Integer.parseInt(request.getParameter("number1"));
int num2 = Integer.parseInt(request.getParameter("number2"));
%>

<!-- Now we can Add and display the SUM -->
<!-- To Show the result we have to use Expression element -->
<h1>The Addition of <%=num1%> and <%=num2%> is <%=num1+num2 %></h1>
</body>
</html>