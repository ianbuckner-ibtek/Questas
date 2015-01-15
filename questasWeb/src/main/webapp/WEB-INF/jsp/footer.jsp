
<footer class="footer">
	<p>&copy; Questa 2015</p>
</footer>

</div>
<!-- /container -->

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script
	src="<c:url value="/resources/assets/js/ie10-viewport-bug-workaround.js" />"></script>

<c:if test="${pageContext.request.userPrincipal.name != null}">
	<c:url value="/j_spring_security_logout" var="logoutUrl" />

	<!-- csrt for log out-->
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>
</c:if>

</body>
</html>
