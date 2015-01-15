<%@page session="false"%>
<%@ include file="/WEB-INF/jsp/header.jsp" %>
   
	<nav role="navigation">
		<ul class="nav nav-tabs">
  			<li role="presentation" ><a href="dashboard"><spring:message code="tab.dashboard" /></a></li>
  			<li role="presentation" class="active"><a href="#"><spring:message code="tab.kam" /></a></li>
		</ul>
	</nav>   
<p></p>
	<button type="button" class="btn btn-primary">
  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> <spring:message code="kam.addaccount"/>
</button>
	<p></p>
	
<%@ include file="/WEB-INF/jsp/footer.jsp" %>

