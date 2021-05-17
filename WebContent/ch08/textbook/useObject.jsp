<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="member" scope="request" class="ch08.MemberInfo"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<%= member.getName() %> (<%= member.getId() %>) 회원님
	안녕하세요.	
	
	<br>
	
	<jsp:getProperty property="name" name="member"/>
	(<jsp:getProperty property="id" name="member"/>) 회원님
	안녕하세요.
	
</div>
</body>
</html>









