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
	<form action="" method="post">
		id : <br>
		<input type="text" name="id" value="${member.id }" readonly> <br>
		pw : <br>
		<input type="password" name="password" value="${member.password }" readonly> <br>
		name : <br>	
		<input type="text" name="name" value="${member.name }" readonly> <br>
		birth day: <br>
		<input type="date" name="birth" value="${member.birth }" readonly> <br>
		
	</form>
</div>
</body>
</html>