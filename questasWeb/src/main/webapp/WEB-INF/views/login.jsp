<%@page session="false"%>
<%@ include file="/WEB-INF/jsp/header.jsp"%>

<c:if test="${error != null}">
	<div class="alert alert-danger" role="alert"><spring:message code="${error}" /></div>
</c:if>

<div class="jumbotron">
	<form class="form-signin"
		action="<c:url value='j_spring_security_check' />" method='POST'>
		<h2 class="form-signin-heading"><spring:message code="login.welcome" /></h2>
		<label for="inputEmail" class="sr-only"><spring:message code="login.email" /></label>
		<input type="email" id="inputEmail" class="form-control"
			name="username" placeholder="<spring:message code="login.email" />"
			required autofocus> <label
			for="inputPassword" class="sr-only"><spring:message code="login.password" /></label> <input
			type="password" name="password" id="inputPassword" class="form-control"
			placeholder="<spring:message code="login.password" />" required>
		<button class="btn btn-primary btn-block" type="submit"><spring:message code="button.login"></spring:message></button>

		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
				
	
</div>
<%@ include file="/WEB-INF/jsp/footer.jsp"%>

