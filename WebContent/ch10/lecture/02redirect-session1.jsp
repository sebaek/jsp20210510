<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
Calendar c = Calendar.getInstance();
session.setAttribute("myattr2", c);

response.sendRedirect("02redirect-session2.jsp");

%>