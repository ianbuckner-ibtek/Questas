<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Questas">
<link rel="icon" href="images/favicon.ico">

<title><spring:message code="page.title"></spring:message></title>
<link
	href="<c:url value="/resources/bootstrap/dist/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/base.css" />" rel="stylesheet">
<c:if test="${viewName != null}">
	<link href="<c:url value="/resources/css/${viewName}.css" />"
		rel="stylesheet">
</c:if>
</head>

<c:if test="${navTitle == null}">
	<c:set var="navTitle" value="button.login" />
	<c:set var="navUrl" value="/secure/dashboard" />
</c:if>


<body>
	<div class="container">
		<div class="header">
			<nav>
				<ul class="nav nav-pills pull-right">

					<c:choose>

						<c:when test="${pageContext.request.userPrincipal.name != null}">
							<li role="presentation" class="active"><a
								href="javascript:formSubmit()">Logout</a></li>
						</c:when>

						<c:otherwise>
							<li role="presentation" class="active"><a
								href="<c:url value="${navUrl}" />"><spring:message code="${navTitle}"></spring:message></a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>
			<h3 class="text-muted"><spring:message code="header.title"></spring:message></h3>
		</div>