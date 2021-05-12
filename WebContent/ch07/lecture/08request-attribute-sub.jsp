<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch07.User" %>

<%

User member = (User) request.getAttribute("member"); // 코드 수정

%>

<div>
	이름 : <%= member.getName() %> <br>
	나이 : <%= member.getAge() %> <br>
	주소 : <%= member.getAddress() %> <br>

</div>
