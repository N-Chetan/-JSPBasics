<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Now we need to Use Java Beans to Set the properties coming from HTML -->
<jsp:useBean id="product" class="com.chetan.training.jsp.ProductDetails">
<jsp:setProperty name="product" property="*"/>
</jsp:useBean>

<!-- To Show the Data which is been set -->
Id:<jsp:getProperty property="id" name="product"/>
name:<jsp:getProperty property="name" name="product"/>
description:<jsp:getProperty property="description" name="product"/>
price:<jsp:getProperty property="price" name="product"/>

</body>
</html>