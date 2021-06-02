<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div>
	<a href="<%= request.getContextPath() %>/sample2/main">메인</a>
	|
	<a href="<%= request.getContextPath() %>/sample2/signup">회원가입</a>
	|
	<a href="<%= request.getContextPath() %>/sample2/login">로그인</a>
	|
	<a href="<%= request.getContextPath() %>/sample2/info">정보보기</a>
	|
	<a href="<%= request.getContextPath() %>/sample2/list">목록보기</a>
</div>