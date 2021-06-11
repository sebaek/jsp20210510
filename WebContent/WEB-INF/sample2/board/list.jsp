<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>


<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<s2:navbar></s2:navbar>
<div class="container">
	<h1>글 목록 <small class="text-muted">[${totalNum }]</small></h1>
	<s2:message></s2:message>
	<table class="table">
		<thead>
			<tr>
				<th>#</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성시간</th>
			</tr>
		</thead>
	
		<tbody>
			<c:forEach items="${boards }" var="board">
				<tr>
					<td>${board.boardId }</td>
					<td>
						<a href="<%= request.getContextPath() %>/sample2/board/detail?id=${board.boardId}">
							${board.title }
						</a>
						<c:if test="${board.numberOfComment != 0 }">
							
							<span class="fa-layers fa-fw">
						    <i class="fas fa-comment"></i>
						    <span class="fa-layers-text fa-inverse" data-fa-transform="shrink-5">${board.numberOfComment }</span>
						  </span>

						</c:if>
					</td>
					<td>${board.memberName }</td>
					<td>${board.timeAgo }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

</body>
</html>








