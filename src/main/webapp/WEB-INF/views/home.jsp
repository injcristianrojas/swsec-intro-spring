<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h3>Welcome! The time on the server is ${serverTime}.</h3>

	<form action="/greeting" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<p>
			What's your name? <input type="text" name="name"> <input
				type="submit" value="Aceptar">
		</p>
	</form>

	<p>
		<a href="/persons">View all persons</a><br>
		<a href="/messages">View all messages</a>
	</p>

</body>
</html>
