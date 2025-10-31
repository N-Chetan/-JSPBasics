<!-- This file is Error page Handler -->
<!-- By using isErrorPage="true" attribute  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Handler Page</title>
</head>
<body>

<h1>Sorry , Error Occured</h1>
<%= exception.getMessage() %>

</body>
</html>