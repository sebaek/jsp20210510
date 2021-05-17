<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch08.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
List<MemberInfo> list = (List<MemberInfo>) application.getAttribute("list");
if (list == null) {
	list = new ArrayList<>();
	application.setAttribute("list", list);
}
%>
<jsp:useBean id="memberInfo" class="ch08.MemberInfo" />
<jsp:setProperty name="memberInfo" property="*"/>
<%-- <jsp:setProperty name="memberInfo" property="password" value="<%= memberInfo.getId() %>" /> --%>
<jsp:setProperty name="memberInfo" property="password" param="id" />
<%
list.add(memberInfo);
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container mt-5">
	<div class="row justify-content-center">
		<div class="col-10">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>아이디</th>
						<th>암호</th>
						<th>이름</th>
						<th>이메일</th>
					</tr>
				</thead>
				
				<tbody>
<%
for (MemberInfo mem : list) {
	out.print("<tr>");
	out.print("<td>");
	out.print(mem.getId());
	out.print("</td>");
	out.print("<td>");
	out.print(mem.getPassword());
	out.print("</td>");
	out.print("<td>");
	out.print(mem.getName());
	out.print("</td>");
	out.print("<td>");
	out.print(mem.getEmail());
	out.print("</td>");
	out.print("</tr>");
}
%>				
				<%--
					<tr>
						<td><jsp:getProperty property="id" name="memberInfo"/></td>
						<td><jsp:getProperty property="password" name="memberInfo"/></td>
						<td><jsp:getProperty property="name" name="memberInfo"/></td>
						<td><jsp:getProperty property="email" name="memberInfo"/></td>
					</tr>
				 --%>
				</tbody>
			</table>		
		</div>
	</div>
</div>
</body>
</html>







