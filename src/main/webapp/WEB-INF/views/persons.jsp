<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h3>People registered in this system are:</h3>
	<h3>Persons List</h3>
	<c:if test="${!empty personsList}">
		<table class="tg">
			<tr>
				<th width="80">Person Name</th>
				<th width="120">Person Surname</th>
			</tr>
			<c:forEach items="${personsList}" var="person">
				<tr>
					<td>${person.name}</td>
					<td>${person.surname}</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>
