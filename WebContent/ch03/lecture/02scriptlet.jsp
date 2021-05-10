<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String str = "hello";
out.write("<h1> scriptlet으로 작성한 코드 </h1>");
%>

<h1>scriptlet</h1>
<p>java code를 작성할 수 있는 요소 </p>

<%-- 
java code를 작성할 수 있는 jsp요소
1. scriptlet (스크립트릿)
2. expression (표현식)
3. declaration (선언부)
 --%>


<%
// java code 
/*
	java code.....
*/
System.out.println("console...");
%>
</body>
</html>









