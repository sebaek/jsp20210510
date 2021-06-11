<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>


<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
	<s2:navbar></s2:navbar>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-8">
				<h1>로그인</h1>
				<form method="post"
					action="${pageContext.request.contextPath }/sample2/member/login">
					<div class="form-group">
						<label for="input1">아이디</label> <input class="form-control"
							type="text" name="id" id="input1">
					</div>

					<div class="form-group">
						<label for="input2">패스워드</label> <input class="form-control"
							type="password" name="password" id="input2">
					</div>

					<button type="submit" class="btn btn-primary">
						<i class="fas fa-sign-in-alt"></i>로그인
					</button>
				</form>
			</div>
		</div>
		<s2:message></s2:message>
	</div>
</body>
</html>









