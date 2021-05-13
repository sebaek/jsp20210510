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
	<h1>세션 정보 꺼내기</h1>
	<p>MEMBERID : <%= session.getAttribute("MEMBERID") %></p>
	<p>NAME : <%= session.getAttribute("NAME") %></p>
</div>
</body>
</html>





