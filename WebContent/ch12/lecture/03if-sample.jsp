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
	<form>
	나이 : <input type="number" name="age" /> 
	<br>
	<input type="submit" value="체크" />
	</form>
</div>

<div class="container mt-5">
	<c:if test="${param.age >= 20 }" >
		<h1>투표 가능 </h1>
	</c:if>
	<c:if test="${param.age < 20 }" >
		<h1>투표 불가능</h1>
	</c:if>
</div>
</body>
</html>










