<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>form</h1>
<form>
	<input name="q" type="text">
	<br>
	<input name="age" type="text">
	<br>
	<input type="submit" value="send">
</form>

<hr>

<p><%= request.getParameter("q") %> </p>
<p><%= request.getParameter("age") %> </p>
</body>
</html>





