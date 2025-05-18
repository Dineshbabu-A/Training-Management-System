<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="com.nttdata.training.domain.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student</title>
</head>

<style>

body{
 font-family: Verdana, Geneva, Tahoma, sans-serif;
}

</style>
<body>
<div class="container" style="margin-top:100px;padding:200px;">
<%
String context = request.getContextPath();
%>
<font color="green" size="20">${requestScope.success }</font>
<h4>Please note your password for further use
${requestScope.details.password }</h4>

<span>Click here to <a href="<%=context%>\Student_login.jsp"> login</a> </span>

</div>

</body>
</html>