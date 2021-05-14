<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
String memberId = (String) session.getAttribute("MEMBERID");
boolean login = memberId != null;
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
<%
	if (login) {
%>
		아이디 "<%= memberId %>"로 로그인 한 상태
<%
	} else {
%>
		로그인하지 않은 상태
<%
	}
%>	
</div>
</body>
</html>





