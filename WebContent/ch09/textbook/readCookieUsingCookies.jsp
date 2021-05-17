<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	Cookies cookies = new Cookies(request);
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	name 쿠키 = <%= cookies.getValue("name") %> <br>
	<% if (cookies.exists("id")) { %>
			id 쿠키 = <%= cookies.getValue("id") %>	 <br>
	<% } %>
</div>
</body>
</html>



