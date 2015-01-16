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

<title>Questas</title>
<link
	href="<c:url value="/resources/bootstrap/dist/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/base.css" />" rel="stylesheet">

</head>

<c:if test="${navTitle == null}">
	<c:set var="navTitle" value="button.login" />
	<c:set var="navUrl" value="/signin" />
</c:if>


<body>
	<div class="container">
		<div class="header">
			<nav>
				<ul class="nav nav-pills pull-right">
					<li role="presentation" class="active"><a
						href="<c:url value="/home" />">Back</a></li>

				</ul>
			</nav>
			<h3 class="text-muted">Questas Online</h3>
		</div>
		<div class="jumbotron">
			<h1>Whoops!</h1>
			<p>Well that wasn't supposed to happen!</p>
			<p>Maybe you tried to go to a page that doesn't exist or did
				something else that we were not expecting you to do. Never mind,
				please accept our heartfelt apologies and hit the button above to
				try again.</p>

		</div>

		<%@ include file="/WEB-INF/jsp/footer.jsp"%>