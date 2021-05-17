<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="book" class="ch08.Book">
	<jsp:setProperty name="book" property="*" />
	<%--
	<jsp:setProperty name="book" property="title" param="title" />
	<jsp:setProperty name="book" property="writer" param="writer" />
	<jsp:setProperty name="book" property="price" param="price" />
	 --%>
</jsp:useBean>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	제목 : <jsp:getProperty property="title" name="book"/> <br>
	저자 : <jsp:getProperty property="writer" name="book"/> <br>
	가격 : <jsp:getProperty property="price" name="book"/> <br>
</div>
</body>
</html>








