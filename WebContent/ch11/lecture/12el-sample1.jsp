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
	<form action="12el-sample2.jsp" method="post" >
		<input type="checkbox" name="fruit" value="berry" />berry <br>
		<input type="checkbox" name="fruit" value="banana" />banana <br>
		<input type="checkbox" name="fruit" value="apple" />apple <br>
		<input type="checkbox" name="fruit" value="kiwi" />kiwi <br>
		<input type="checkbox" name="fruit" value="melon" />melon <br>
		<input type="submit" value="전송"/>
	</form>
</div>
</body>
</html>






