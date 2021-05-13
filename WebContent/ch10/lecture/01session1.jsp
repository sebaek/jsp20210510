<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>session 1</h1>
	
	<%
	request.setAttribute("reqattr1", "reqval1");
	session.setAttribute("myattr1", "myval1");
	%>
</div>
</body>
</html>







