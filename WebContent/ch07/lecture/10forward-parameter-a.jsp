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
	
	<jsp:forward page="10forward-parameter-b.jsp">
		<jsp:param value="b" name="code"/>
		<jsp:param value="30" name="age"/>
	</jsp:forward>
	
</div>
</body>
</html>










