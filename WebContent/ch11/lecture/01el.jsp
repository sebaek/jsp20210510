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
	<h1>Expression Language (EL) - 표현 언어</h1>
	<h3>문법</h3>
	<p>${var }</p>
	<p>var : 4개 영역(page, request, session, application)의
	attribute(속성)</p>
	<p>page 영역 부터 request, session, application 영역 순으로 찾는다.</p>
	<p>없으면 출력하지 않음</p>
</div>
</body>
</html>







