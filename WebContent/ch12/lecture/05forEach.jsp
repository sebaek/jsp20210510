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
	<h1>forEach Tag</h1>
	<c:forEach begin="1" end="3">
		<h3>반복 요소1</h3>
	</c:forEach>
	
	<hr>
	<c:forEach var="i" begin="1" end="3">
		<h3>반복 ${i } </h3>
	</c:forEach>
	
	<hr>
	
	<c:forEach var="i" begin="1" end="10" step="2">
		<h3>반복 step ${i }</h3>
	</c:forEach>
</div>
</body>
</html>







