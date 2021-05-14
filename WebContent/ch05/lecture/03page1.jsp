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
	<h1> page 1 jsp</h1>
	
	<%
	pageContext.setAttribute("page-attr3", "page-value3");
	request.setAttribute("req-attr3", "req-value3");
	%>
	
	<jsp:include page="03page2.jsp"></jsp:include>
	
	<hr>
	
	<%=	pageContext.getAttribute("page-attr3")	%>
</div>
</body>
</html>







