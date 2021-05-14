<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
Cookie cookie = new Cookie("my-cookie", "my-value");
cookie.setMaxAge(0);
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
	<h1>쿠키 삭제 </h1>
</div>
</body>
</html>





