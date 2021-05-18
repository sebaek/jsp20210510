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
	<h1>param</h1>
	${param }
	<br>
	${param.name }
	<br>
	${param.age }
	
	<hr>
	
	<%
	String[] names = request.getParameterValues("name");
	%>
	<%= names[0] %>
	<br>
	<%= names[1] %>
	
	<hr>
	${paramValues.name[0] }
	<br>
	${paramValues.name[1] }
	
</div>
</body>
</html>





