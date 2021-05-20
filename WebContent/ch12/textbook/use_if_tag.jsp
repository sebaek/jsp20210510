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
	<c:if test="true">
	무조건 수행 <br>
	</c:if>
	
	<c:if test="${param.name == 'bk' }">
	name 파라미터의 값이 ${param.name } 입니다.<br>
	</c:if>
	
	<c:if test="${18 < param.age }">
	당신의 나이는 18세 이상입니다.
	</c:if>
</div>
</body>
</html>