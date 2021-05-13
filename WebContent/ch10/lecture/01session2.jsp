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
	<h1>session 2</h1>
	
	<%
	Object o = session.getAttribute("myattr1");
	String s = (String) o;
	
	Object a = request.getAttribute("reqattr1");
	String b = (String) a;
	%>
	
	myattr1 : <%= s %> <br>
	reqattr1 : <%= b %>
</div>
</body>
</html>








