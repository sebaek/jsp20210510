<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="member" scope="request" class="ch08.MemberInfo" />
<%--
member.setId("madvirus");
member.setName("최범균");
--%>
<jsp:setProperty name="member" property="id" value="madvirus" />
<jsp:setProperty name="member" property="name" value="최범균" />

<jsp:forward page="useObject.jsp" />