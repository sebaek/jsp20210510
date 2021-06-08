<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:if test="${not empty message }" >
	<div class="alert alert-primary">
		${message }
	</div>
	
	<c:remove var="message" />
</c:if>