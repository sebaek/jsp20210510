<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div>
	startPage : ${startPage }
	<br>
	endPage : ${endPage }
	
	<br>
	pageAttr1 : ${pageAttr1 }
</div>

<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
    
    <c:forEach begin="${startPage }" end="${endPage }" var="i">
    	<li class="page-item"><a class="page-link" href="#">${i }</a></li>
    </c:forEach>
    
    
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>