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
	<h1>글 작성</h1>
	<form action="${pageContext.request.contextPath }/sample2/board/write" method="post" >
		제목 : <br>
		<input type="text" name="title" id="input1"> <br>
		본문 : <br>
		<textarea name="body" id="textarea1"></textarea> <br>
		<input type="submit" value="작성" >
	</form>
	
</div>
</body>
</html>











