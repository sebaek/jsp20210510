<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<table class="table">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>City</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${customers }" var="customer">
				<tr>
					<td>${customer.id }</td>
					<td>${customer.name }</td>
					<td>${customer.city }</td>
				</tr>
			</c:forEach>		
		</tbody>
	</table>

	<div class="d-flex justify-content-center mt-3">
		<nav aria-label="Page navigation example">
		  <ul class="pagination">
		    <c:forEach begin="1" end="10" var="i">
			    <li class="page-item"><a class="page-link"
			        href="${pageContext.request.contextPath }/JDBC13Servlet?page=${i}">${i }</a></li>
		    </c:forEach>
		  </ul>
		</nav>
	</div>	
</div>
</body>
</html>











