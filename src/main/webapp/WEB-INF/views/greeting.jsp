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

	<h1>Hello, ${name}, welcome.</h1>
	<p>
		I'm a c:out tag, and I also know that your name is
		<c:out value="${name}" />
		. I'm also secure ;)
	</p>
	<p>
		I'm also a c:out tag, but I'm bad with
		<c:out value="${name}" escapeXml="false" />
	</p>
	<p>
		<a href="/">Go Home</a>
	</p>
</body>
</html>
