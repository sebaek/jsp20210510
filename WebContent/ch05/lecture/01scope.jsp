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
	<h1>jsp(servlet) 영역</h1>
	<p>
	page : 하나의 jsp (pageContext - PageContext) <br>
	request : 하나의 요청 (request - HttpServletRequest) <br>
	session : 하나의 웹브라우저 (session - HttpSession) <br>
	application : 하나의 웹 어플리케이션 (application - ServletContext) <br>
	</p>
</div>
</body>
</html>







