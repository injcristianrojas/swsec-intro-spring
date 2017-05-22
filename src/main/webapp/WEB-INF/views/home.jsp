<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h3>Welcome! The time on the server is ${serverTime}.</h3>

	<form action="/" method="post">
		<p>What's your name? <input type="text" name="name"> <input type="submit"
			value="Aceptar"></p>
	</form>

</body>
</html>
