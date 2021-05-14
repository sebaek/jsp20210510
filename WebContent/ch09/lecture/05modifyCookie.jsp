<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
Cookie[] cookies = request.getCookies();

for (Cookie c : cookies) {
	if (c.getName().equals("my-cookie")) {
		Cookie cookie = new Cookie("my-cookie", "new-value");
		response.addCookie(cookie);
	}
}

%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>쿠키 변경</h1>
</div>
</body>
</html>




