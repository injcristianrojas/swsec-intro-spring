<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h3>People registered in this system are:</h3>
	<h3>Persons List</h3>
	<table class="tg" border="1">
		<tr>
			<th>Person Name</th>
			<th>Person Surname</th>
		</tr>
		<c:forEach items="${personsList}" var="person">
			<tr>
				<td>${person.name}</td>
				<td>${person.surname}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
