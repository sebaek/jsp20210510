<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
pageContext.setAttribute("myReq", request);
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	expression : <%= request.getContextPath() %>
	<br>
	el : ${myReq.contextPath } 
	<br>
	method : ${myReq.method } 
	<br>
	requestedSessionId : ${myReq.requestedSessionId } 
</div>
</body>
</html>







