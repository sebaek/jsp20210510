<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch08.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="book1" class="ch08.Book" scope="request"></jsp:useBean>

<jsp:setProperty name="book1" property="title" value="이것이 자바다" />
<jsp:setProperty name="book1" property="writer" value="신용권" />

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<%
	Book book = (Book) request.getAttribute("book1");
	%>
	
	book : <%= book != null %> 
	
	<br>
	제목 : <%= book.getTitle() %>
	<br>
	저자 : <%= book.getWriter() %>
	
	<hr>
	<h3>getProperty Tag</h3>
	제목 : <jsp:getProperty property="title" name="book1"/> <br>
	저자 : <jsp:getProperty property="writer" name="book1"/>
	
</div>
</body>
</html>






