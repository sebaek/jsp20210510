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
	pageContext : ${pageContext }
	<br>
	request : ${pageContext.request }
	<br>
	session : ${pageContext.session }
	<br>
	application : ${pageContext.servletContext }
	<br>
	contextPath : ${pageContext.request.contextPath }
	<br>
	
</div>
</body>
</html>







