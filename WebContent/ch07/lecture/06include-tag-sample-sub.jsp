<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<%
	String startStr = request.getParameter("start");
	String endStr = request.getParameter("end");
	
	int start = Integer.parseInt(startStr);
	int end = Integer.parseInt(endStr);
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





