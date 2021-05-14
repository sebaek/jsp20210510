<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
String name = request.getParameter("name");
String value = request.getParameter("value");

if (name != null && value != null) {
	application.setAttribute(name, value);
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
	<%
	if (name != null && value != null) {
	%>
		application 기본 객체의 속성 설정:
		<%= name %> = <%= value %>
	<%
	} else {
	%>
		application 기본 객체의 속성 설정 안함
	<%
	}
	%>
</div>
</body>
</html>