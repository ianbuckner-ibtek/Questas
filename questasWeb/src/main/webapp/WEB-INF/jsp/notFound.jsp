<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="navTitle" value="button.back" />
<c:set var="navUrl" value="/secure/dashboard" />

<%@ include file="/WEB-INF/jsp/header.jsp"%>

<div class="jumbotron">
	<h1><spring:message code="notfound.title" /></h1>
	<p><spring:message code="notfound.p1" /></p>
	<p><spring:message code="notfound.p2" /></p>
</div>

<%@ include file="/WEB-INF/jsp/footer.jsp"%>
