<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%--
	<jsp:forward> 액션 태그를 실행하면
	생성했던 출력 결과는 모두 제거된다.
 --%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	이 페이지는 from.jsp가 생성한 것입니다.
	
	<jsp:forward page="to.jsp"></jsp:forward>
</div>
</body>
</html>




