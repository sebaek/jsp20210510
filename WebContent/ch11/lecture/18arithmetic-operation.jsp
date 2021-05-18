<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
pageContext.setAttribute("a", 50);
pageContext.setAttribute("b", 30);
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	\${a + b } = ${a + b } <br>
	\${a - b } = ${a - b } <br>
	\${a * b } = ${a * b } <br>
	\${a / b } = ${a / b } <br>
	\${a % b } = ${a % b } <br>
	\${a mod b } = ${a mod b } <br>
</div>
</body>
</html>





