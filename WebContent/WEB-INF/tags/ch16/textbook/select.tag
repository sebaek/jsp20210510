<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag dynamic-attributes="optionMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="name" required="ture" %>

<select name="${name }">
	<c:forEach items="${optionMap }" var="option">
		<option value="${option.key }">${option.value }</option>
	</c:forEach>
</select>