<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch08.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
Book book = new Book();
book.setTitle("이것이 자바다");
book.setWriter("신용권");

request.setAttribute("book1", book);
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
	Book book1 = (Book) request.getAttribute("book1");
	%>
	
	제목:<%= book1.getTitle() %> <br>
	저자:<%= book1.getWriter() %> <br>
</div>
</body>
</html>







