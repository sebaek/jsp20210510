<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
request.setAttribute("desc", "<b>는 굵은 글씨로 표시됨");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	b 태그 설명 : ${desc }
	<br>
	&lt;&gt;
	
	<br>
	b 태그 설명 : <c:out value="${desc }" />
</div>
</body>
</html>






