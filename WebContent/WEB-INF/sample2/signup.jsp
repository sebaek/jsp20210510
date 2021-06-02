<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<s2:navbar></s2:navbar>
<div class="container">
	<form action="${pageContext.request.contextPath }/sample2/signup" method="post">
		id : <br>
		<input type="text" name="id" > <br>
		pw : <br>
		<input type="password" name="password"> <br>
		name : <br>	
		<input type="text" name="name"> <br>
		birth day: <br>
		<input type="date" name="birth"> <br>
		
		<input type="submit" value="가입">
	</form>
</div>
</body>
</html>








