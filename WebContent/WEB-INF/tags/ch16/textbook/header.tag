<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="title" required="true" %>
<%@ attribute name="level" type="java.lang.Integer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
	<c:when test="${level == 2 }">
		<h2>${title }</h2>
	</c:when>
	<c:when test="${level eq 3 }">
		<h3>${title }</h3>
	</c:when>
	<c:otherwise>
		<h1>${title }</h1>
	</c:otherwise>
</c:choose>

<hr>

<%
String headStartTag = null;
String headEndTag = null;
if (level == null) {
	headStartTag = "<h1>";
	headEndTag = "</h1>";
} else if (level == 1) {
	headStartTag = "<h1>";
	headEndTag = "</h1>";
} else if (level == 2) {
	headStartTag = "<h2>";
	headEndTag = "</h2>";
} else if (level == 3) {
	headStartTag = "<h3>";
	headEndTag = "</h3>";
}
%>
<%= headStartTag %>
	${title }
<%= headEndTag %>







