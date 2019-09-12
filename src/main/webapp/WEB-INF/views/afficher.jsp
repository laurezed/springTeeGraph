<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/style.css">
<base
	href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath() + "/"%>" />
</head>
<body>
	<h1>Bonjour</h1>


	<div class="graph">
		<c:forEach items="${myList}" var="seri">
			<a href="#"><img alt="graph" src="${seri.photo}"
				class="img_product"></a>
		</c:forEach>
	</div>

	<div id="popup1" class="overlay">
		<div class="popup">
			<h2>Nom du produit</h2>
			<a class="close" href="#">&times;</a>
			<div class="content">
				<div class="modele">
					<h3>Mod�le</h3>
					<div class="radio-model">
						<i class="fas fa-tshirt"></i> <i class="fas fa-tshirt"></i> <i
							class="fas fa-tshirt"></i>
					</div>
					<input type="radio" name="" id=""> <input type="radio"
						name="" id=""> <input type="radio" name="" id="">
				</div>


<!-- 				<img src="./tshirt.jpg" alt="tshirt" class="img-tshirt">  -->
				
				<label
					for="">Taille : </label> <select name="" id="">
					<optgroup>
						<option value="">S</option>
						<option value="">M</option>
						<option value="">L</option>
						<option value="">XL</option>
					</optgroup>
				</select>

			</div>
		</div>
	</div>

</body>
</html>