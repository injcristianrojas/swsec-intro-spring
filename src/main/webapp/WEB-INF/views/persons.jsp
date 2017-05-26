<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h3>People List (type ${type}):</h3>
	<table class="tg" border="1">
		<tr>
			<th>Name</th>
			<th>Surname</th>
			<th>Type</th>
		</tr>
		<c:forEach items="${personsList}" var="person">
			<tr>
				<td>${person.name}</td>
				<td>${person.surname}</td>
				<td>${person.type}</td>
			</tr>
		</c:forEach>
	</table>
	<p><a href="/">Go Home</a></p>
</body>
</html>
