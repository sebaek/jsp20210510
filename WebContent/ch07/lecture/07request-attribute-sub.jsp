<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch07.Page" %>

<% request.setCharacterEncoding("utf-8"); %>

<%

//String startStr = request.getParameter("start");
//String endStr = request.getParameter("end");

Page p = (Page) request.getAttribute("page");
int start = p.getStart();
int end = p.getEnd();


%>

<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
<%
for (int i = start; i <= end; i++) {
%>
    <li class="page-item"><a class="page-link" href="#"><%= i %></a></li>
<%
}
%>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>




