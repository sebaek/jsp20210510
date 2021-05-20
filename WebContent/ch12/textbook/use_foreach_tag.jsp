<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
HashMap<String, Object> mapData = new HashMap<>();
mapData.put("name", "최범균");
mapData.put("today", new Date());
%>
<c:set var="intArray" value="<%= new int[] {1, 2, 3, 4, 5} %>" />
<c:set var="map" value="<%= mapData %>" />

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h4>1부터 100까지 홀수의 합</h4>
	<c:set var="sum" value="0" />
	<c:forEach var="i" begin="1" end="100" step="2">
		<c:set var="sum" value="${sum + i }" />
	</c:forEach>
	결과 = ${sum }
	
	<h4>구구단 : 4단</h4>
	<ul>
		<c:forEach var="i" begin="1" end="9">
			<li>4 * ${i	} = ${4 * i }
		</c:forEach>
	</ul>
	
	<h4>int형 배열 </h4>
	<c:forEach var="i" items="${intArray }" begin="2" end="4" varStatus="status">
		${status.index } - ${status.count } - [${i }] <br>
	</c:forEach>
	
	<h4>Map</h4>
	<c:forEach var="i" items="${map }">
		${i.key } = ${i.value } <br>
	</c:forEach>
</div>
</body>
</html>




