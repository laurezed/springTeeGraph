<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page session="false" %>

<html>
<head>
	<title>page d'accueil</title>
</head>

<body>
<h2>TeeGraph</h2>


<form:form method="post" action="${pageContext.request.contextPath}/georgette/authentication/avec/validation" modelAttribute="userBean">
		<form:errors path="email" />
		<form:input path="email"/>
		
		<form:errors path="password" />
		<form:input path="password"/>
		<input type="submit" value="GO">
</form:form>
	

</body>
</html>
