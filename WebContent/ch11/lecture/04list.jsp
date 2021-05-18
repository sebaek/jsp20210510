<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("html");
list.add("mariadb");
list.add("css");

pageContext.setAttribute("list1", list);
pageContext.setAttribute("i", "3");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	0 : ${list1[0] } <br>
	1 : ${list1[1] } <br>
	2 : ${list1["2"] } <br>
	3 : ${list1[i] } <br>
</div>
</body>
</html>






