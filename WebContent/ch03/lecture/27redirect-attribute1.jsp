<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<% 
Calendar c = Calendar.getInstance();
request.setAttribute("date", c);

response.sendRedirect("27redirect-attribute2.jsp"); 

%>