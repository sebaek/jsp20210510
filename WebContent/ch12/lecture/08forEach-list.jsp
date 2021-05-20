<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
List<String> list = new ArrayList<>();
list.add("mysql");
list.add("aws");
list.add("oracle");
list.add("sql");

request.setAttribute("attr1", list);
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>forEach list</h1>
	<ul>
		<c:forEach items="${attr1 }" var="elem">
			<li>${elem }</li>
		</c:forEach>
	</ul>
</div>
</body>
</html>






