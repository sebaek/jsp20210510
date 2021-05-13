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
	<%
	String[] list = (String[]) request.getAttribute("list");
	%>
	
	<ul>
		<%
		for (String item : list) {
			out.print("<li>");
			out.print(item);
			out.print("</li>");
		}
		%>
	
	</ul>
	
</div>
</body>
</html>









