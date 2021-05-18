<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>and</h1>
	\${true && true } : ${true && true } <br>
	\${true && false } : ${true && false } <br>
	\${false && true } : ${false && true } <br>
	\${false && false } : ${false && false } <br>
	
	<hr>
	
	\${true and true } : ${true and true } <br>
	\${true and false } : ${true and false } <br>
	\${false and true } : ${false and true } <br>
	\${false and false } : ${false and false } <br>
	
	<h1>OR</h1>
	\${true || true } : ${true || true } <br>
	\${true || false } : ${true || false } <br>
	\${false || true } : ${false || true } <br>
	\${false || false } : ${false || false } <br>
	<hr>
	\${true or true } : ${true or true } <br>
	\${true or false } : ${true or false } <br>
	\${false or true } : ${false or true } <br>
	\${false or false } : ${false or false } <br>
	
	<h1>not</h1>
	\${! true } : ${! true } <br>
	\${! false } : ${! false } <br>
	<hr>
	\${not true } : ${not true } <br>
	\${not false } : ${not false } <br>
</div>
</body>
</html>









