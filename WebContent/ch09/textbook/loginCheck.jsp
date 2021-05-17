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
	<%
		if (cookies.exists("AUTH")) {
	%>
			아이디 "<%= cookies.getValue("AUTH") %>"로 로그인 한 상태
	<%
		} else {
	%>
			로그인하지 않은 상태
	<%
		}
	%>
</div>
</body>
</html>