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
	<form method="post">
		이름 : <input type="text" name="name" style="width:100%"/>
		<br>
		<input type="submit" />
	</form>
</div>

<div class="container mt-5">
	<c:if test="${not empty param.name}">
		<%-- ${param.name }님 반갑습니다. --%>
		<c:out value="${param.name }" />님 반갑습니다.
	</c:if>
</div>

</body>
</html>












