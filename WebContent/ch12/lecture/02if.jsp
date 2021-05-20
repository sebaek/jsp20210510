<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>if tag</h1>
	<c:if test="true">
		<h1>test가 true일 때만 출력1</h1>
	</c:if>
	<c:if test="false">
		<h1>test가 true일 때만 출력2</h1>
	</c:if>
	
	<%
		if (true) {
	%>
		<h1>scriptlet 사용</h1>
	<%
		}
	%>
	
</div>
</body>
</html>











