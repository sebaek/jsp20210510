<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
<script>
	var url = "${pageContext.request.contextPath}" + "/sample2/member/checkdup";

	$(document).ready(function() {
		$("#button1").click(function() {
			var id = $("#input1").val();

			$.post(url, {
				id : id
			}, function(data) {
				if (data == 'ok') {
					// 가입 가능 메세지
					// console.log("ok");
					$("#span1").text("사용 가능");
				} else {
					// 가입 불가능 메세지
					// console.log("not ok");
					$("#span1").text("사용 불가능");
				}
			});
		});
	});
</script>

</head>
<body>
	<s2:navbar></s2:navbar>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-8">
				<h1>회원 가입</h1>
				<form
					action="${pageContext.request.contextPath }/sample2/member/signup"
					method="post">

					<div class="form-group">
						<label for="input1">아이디</label>
						<div class="input-group mb-3">
							<input id="input1" class="form-control" name="id" type="text">
							<div class="input-group-append">
								<button class="btn btn-outline-secondary" type="button"
									id="button1">중복확인</button>
							</div>
						</div>
						<span class="form-text text-muted" id="span1"></span>
					</div>

					<div class="form-group">
						<label for="input2">패스워드</label> <input id="input2"
							type="password" name="password" class="form-control">
					</div>

					<div class="form-group">
						<label for="input3">이름</label> <input id="input3"
							class="form-control" type="text" name="name">
					</div>

					<div class="form-group">
						<label for="input4">생일</label> <input id="input4"
							class="form-control" type="date" name="birth">
					</div>

					<button class="btn btn-primary" type="submit">
						<i class="fas fa-user-plus"></i>가입
					</button>
				</form>
			</div>
		</div>
		<s2:message></s2:message>
	</div>
</body>
</html>








