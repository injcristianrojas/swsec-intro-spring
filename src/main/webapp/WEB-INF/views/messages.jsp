<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h3>Message List:</h3>
	<c:forEach items="${messagesList}" var="message">
		<p>${message.text}</p>
	</c:forEach>
	<form action="/messages" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<p>
			Enter new message: <input type="text" name="text"> <input
				type="submit" value="Go">
		</p>
	</form>
</body>
</html>
