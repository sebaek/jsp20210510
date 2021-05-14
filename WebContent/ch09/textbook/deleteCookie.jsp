<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
Cookie[] cookies = request.getCookies();
if (cookies != null && cookies.length > 0) {
	for (int i = 0; i < cookies.length; i++) {
		if (cookies[i].getName().equals("name")) {
			Cookie cookie = new Cookie("name", "");
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
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
	name 쿠키를 삭제 합니다.
</div>
</body>
</html>