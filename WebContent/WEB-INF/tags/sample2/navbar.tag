<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div>
	<a href="<%= request.getContextPath() %>/sample2/main">메인</a>
	|
	<a href="<%= request.getContextPath() %>/sample2/member/signup">회원가입</a>
	|
	<c:if test="${empty sessionScope.userLogined }" >
		<a href="<%= request.getContextPath() %>/sample2/member/login">로그인</a>
		|
	</c:if>
	
	<c:if test="${not empty sessionScope.userLogined }" >
		<a href="<%= request.getContextPath() %>/sample2/member/info">정보보기</a>
		|
		<a href="<%= request.getContextPath() %>/sample2/member/logout">로그아웃</a>
		|
		<a href="<%= request.getContextPath() %>/sample2/board/write">글쓰기</a>
		|
		<a href="<%= request.getContextPath() %>/sample2/member/list">회원 목록보기</a>
		|
	</c:if>
	<a href="<%= request.getContextPath() %>/sample2/board/list">글 목록보기</a>
</div>







