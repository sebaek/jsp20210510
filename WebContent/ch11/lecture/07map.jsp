<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
Map<String, String> map = new HashMap<>();
map.put("java", "spring");
map.put("css", "bootstrap");
map.put("js", "jquery");
map.put("python", "django");

pageContext.setAttribute("map", map);
pageContext.setAttribute("python", "js");
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	java : ${map.java } <br>
	css : ${map.css } <br>
	js : ${map["js"] } <br>
	python : ${map[python] } <br>
</div>
</body>
</html>







