<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>request 객체</h1>
<%
	System.out.println(request);
	
	out.print(request.getHeader("Host"));
%>
<br>
<%= request.getHeader("Connection") %>

<br>
<p>요청 방식</p>
<%= request.getMethod() %>

<p>요청 url </p>
<%= request.getRequestURI() %>

</body>
</html>
















