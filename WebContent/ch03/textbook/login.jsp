<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
String id = request.getParameter("memberId");
if (id != null && id.equals("madvirus")) {
	response.sendRedirect("index.jsp");
} else {
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>잘못된 아이디입니다.</h1>
</div>
</body>
</html>

<%
}
%>