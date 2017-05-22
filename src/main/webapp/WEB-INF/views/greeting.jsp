<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello, ${name}, welcome.</h1>
	<p>I'm a c:out tag, and I also know that your name is <c:out value="${name}"/>. I'm also secure ;)</p>
	<p>I'm also a c:out tag, but I'm bad with <c:out value="${name}" escapeXml="false"/></p>
	<p><a href="/">Go back</a></p>
</body>
</html>
