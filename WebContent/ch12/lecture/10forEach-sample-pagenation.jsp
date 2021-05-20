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
<nav aria-label="Page navigation example">
  <ul class="pagination">
	<c:forEach var="p" begin="3" end="10" varStatus="status">
		<c:if test="${status.first and p ne 1 }">
		    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
		</c:if>
		<li class="page-item"><a class="page-link" href="#">${p }</a></li>
	</c:forEach>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>
</div>
</body>
</html>






