<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@page import="java.text.SimpleDateFormat"%>

<% request.setCharacterEncoding("utf-8"); %>
<%
Date time = new Date();
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	세션ID <%= session.getId() %> <br>
	<%
		time.setTime(session.getCreationTime());
	%>
	세션생성시간: <%= formatter.format(time) %> <br>
	<%
		time.setTime(session.getLastAccessedTime());
	%>
	
	최근접근시간: <%= formatter.format(time) %> <br>
	
	최근접근시간(long) : <%= session.getLastAccessedTime() %>
</div>
</body>
</html>




