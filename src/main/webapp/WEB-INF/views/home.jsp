<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<p align="right">
		user:
		<sec:authentication property="principal.username" />
		role:
		<sec:authentication property="principal.authorities" />
		<a href="/logout">Exit</a>
	</p>

	<h3>Welcome! The time on the server is ${serverTime}.</h3>

	<form action="/greeting" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<p>
			What's your name? <input type="text" name="name"> <input type="submit" value="Go">
		</p>
	</form>

	<p>
		<a href="/persons">View persons</a><br> <a href="/messages">View all messages</a><br>
	</p>

</body>
</html>
