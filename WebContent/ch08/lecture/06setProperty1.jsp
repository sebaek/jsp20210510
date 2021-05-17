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
	<form action="06setProperty2.jsp" method="post">
		제목 : <input type="text" name="title" /> <br>
		저자 : <input type="text" name="writer" /> <br>
		가격 : <input type="number" name="price" /> <br>
		<input type="submit" value="등록" />
	</form>
</div>
</body>
</html>







