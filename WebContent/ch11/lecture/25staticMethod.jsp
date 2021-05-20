<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
	pageContext.setAttribute("myAttr", 2.14);
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	\${Math.round(3.14) } : ${Math.round(3.14) } <br>
	\${Math.round(myAttr) } : ${Math.round(myAttr) } <br>
	
</div>
</body>
</html>





