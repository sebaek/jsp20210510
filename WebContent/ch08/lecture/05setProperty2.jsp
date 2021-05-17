<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch08.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%--
Book book = new Book();

String title = request.getParameter("title");
String name = request.getParameter("name");

book.setTitle(title);
book.setWriter(name);

pageContext.setAttribute("book", book);
--%>

<jsp:useBean id="book" class="ch08.Book" scope="page">
	<jsp:setProperty name="book" property="title" param="title" />
	<jsp:setProperty name="book" property="writer" param="name" />
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
</div>
</body>
</html>





