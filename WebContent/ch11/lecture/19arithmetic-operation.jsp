<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
pageContext.setAttribute("a", "50");
pageContext.setAttribute("b", "30");

pageContext.setAttribute("d", "abc");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	\${a + b } = ${a + b } <br>
	\${a - b } = ${a - b } <br>
	\${a * b } = ${a * b } <br>
	\${a / b } = ${a / b } <br>
	\${a % b } = ${a % b } <br>
	\${a mod b } = ${a mod b } <br>
	
	<hr>
	<%-- null은 0으로 변환 --%>
	\${a + c } = ${a + c } <br>
	\${a - c } = ${a - c } <br>
	\${a * c } = ${a * c } <br>
<%-- 	\${a / c } = ${a / c } <br>
	\${a mod c } = ${a mod c } <br> --%>
	
	<hr>
	<%-- \${a + d } = ${a + d } <br> --%>
</div>
</body>
</html>





