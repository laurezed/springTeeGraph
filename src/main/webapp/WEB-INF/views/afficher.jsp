<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/style.css">
<base href="<%=request.getScheme() + "://"
         + request.getServerName() + ":"
         + request.getServerPort()
         + request.getContextPath() + "/"
         %>" />
</head>
<body>
<h1>Bonjour</h1>


	<div class="graph">
		<c:forEach items="${myList}" var="seri">
			<img alt="graph" src="${seri.photo}" class="img_product">
		</c:forEach>
	</div>
</body>
</html>