<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>
<%@ taglib prefix="s1" tagdir="/WEB-INF/tags/sample1" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<s1:navbar></s1:navbar>

<div class="container mt-5">
	<div class="row justify-content-center">
		<div class="col-8">
			<h1>목록 보기</h1>
			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>제목</th>
						<th>작성자</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list }" var="board" varStatus="status">
						<tr>
							<td>${status.count }</td>
							<td>
								<a href="detail?index=${status.index }">
									${board.title }
								</a>
							</td>
							<td>${board.writer }</td>
						</tr>
					</c:forEach>
				</tbody>
				
			</table>
		</div>
	</div>
</div>
</body>
</html>






