<%@ page import="java.net.URLDecoder"%>
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
	쿠키 목록 <br>
	<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null && cookies.length > 0) {
		for (int i = 0; i < cookies.length; i++) {
	%>
			<%= cookies[i].getName() %> =
			<%= URLDecoder.decode(cookies[i].getValue(), "utf-8") %> <br>
	<%
		}
	} else {
	%>
		쿠키가 존재하지 않습니다.
	<%
	}
	%>
</div>
</body>
</html>