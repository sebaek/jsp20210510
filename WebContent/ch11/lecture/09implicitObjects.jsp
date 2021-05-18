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
	<h1>el 기본 객체 (11개)</h1>
	<ul>
		<li>pageContext (객체)</li>
		<li>pageScope (맵)</li>
		<li>requestScope (맵)</li>
		<li>sessionScope (맵)</li>
		<li>applicationScope (맵)</li>
		<li>param (맵) (String, String)</li>
		<li>paramValues (맵) (String, String[])</li>
		<li>header (맵)</li>
		<li>headerValues (맵)</li>
		<li>cookie (맵)</li>
		<li>initParam (맵)</li>
	</ul>
</div>
</body>
</html>




