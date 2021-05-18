<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
pageContext.setAttribute("pageAttr1", "pageVal1");
request.setAttribute("reqAttr1", "reqVal1");

pageContext.setAttribute("comAttr1", "pageVal2");
request.setAttribute("comAttr1", "reqVal2");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	pageAttr1 : ${pageAttr1 } <br>
	reqAttr1 : ${reqAttr1 } <br>
	
	<hr>
	
	comAttr1 : ${comAttr1 } <br>
	
	<hr>
	
	comAttr1(page) : ${pageScope.comAttr1 } <br>
	comAttr1(req) : ${requestScope.comAttr1 } <br>
</div>
</body>
</html>









