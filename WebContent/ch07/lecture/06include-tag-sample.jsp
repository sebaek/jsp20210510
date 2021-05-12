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
	<h1>Main Contents</h1>
	
	<jsp:include page="06include-tag-sample-sub.jsp">
		<jsp:param value="10" name="start"/>
		<jsp:param value="20" name="end"/>
	</jsp:include>
</div>
</body>
</html>








