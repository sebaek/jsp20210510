<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디 : <%= request.getParameter("id") %> <br>
	암호 : <%= request.getParameter("pw") %> <br>
</body>
</html>