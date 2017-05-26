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
</body>
</html>
