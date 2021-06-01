<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<form action="" method="post">
		id : <input type="text" readonly name="id" value="${customer.id }"> <br>
		name : <input type="text" name="name" value="${customer.name }"> <br>
		contact name : <input type="text" name="contactName" value="${customer.contactName }"> <br>
		address : <input type="text" name="address" value="${customer.address }"> <br>
		city : <input type="text" name="city" value="${customer.city }"> <br>
		postal code : <input type="text" name="postalCode" value="${customer.postalCode }"> <br>
		country : <input type="text" name="country" value="${customer.country }"> <br>
		<input type="submit" >
	</form>
</div>
</body>
</html>










