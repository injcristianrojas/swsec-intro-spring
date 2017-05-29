<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<p align="right">User:<sec:authentication property="principal.username" /><br><a href="/logout">Exit</a></p>
	<table class="tg" border="1">
		<tr>
			<th>Message List</th>
		</tr>
		<c:forEach items="${messagesList}" var="message">
			<tr>
				<td>${message.text}</td>
			</tr>
		</c:forEach>
	</table>
	<form action="/messages" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<p>
			Enter new message: <input type="text" name="text"> <input
				type="submit" value="Go">
		</p>
	</form>
	<p><a href="/">Go Home</a></p>
</body>
</html>
