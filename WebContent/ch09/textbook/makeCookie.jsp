<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.net.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
Cookie cookie = new Cookie("name", URLEncoder.encode("최범균", "utf-8"));
response.addCookie(cookie);
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">

<%= cookie.getName() %> 쿠키의 값 = "<%= cookie.getValue() %>"
	
</div>
</body>
</html>






