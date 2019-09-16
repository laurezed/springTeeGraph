<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/popup.css">
<base
	href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath() + "/"%>" />
</head>
<body>

	${produitForm}
	
	<h2>${msg}</h2>	

	<div id="popup1" class="overlay">
		<div class="popup">
			<h2>${produitForm.designation}</h2>
			<!-- 			<a class="close" id="close" href="product/#">&times;</a> -->
			<div class="content">
				<div class="modele">
					<h3>${produitForm.referenceProduit}</h3>
					<div class="radio-model">
						<i class="fas fa-tshirt"></i> <i class="fas fa-tshirt"></i> <i
							class="fas fa-tshirt"></i>
					</div>
					<!-- 					<input type="radio" name="" id=""> -->
					<!-- 					<input type="radio" name="" id="">  -->
					<!-- 					<input type="radio" name="" id=""> -->

					<c:forEach items="${modeles}" var="seri">
						<label for="${seri}">${seri}</label>
						<input type="radio" name="modele" value="${seri}">
					</c:forEach>
				</div>


				<img src="${produitForm.photo}" alt="tshirt" class="img-tshirt">

				<label for="">Taille : </label> <select name="" id="">
					<optgroup>
						<c:forEach items="${tailles}" var="taille">
							<option value="">${taille}</option>
						</c:forEach>
					</optgroup>
				</select>

			</div>
		</div>
	</div>

	<!-- <script type="text/javascript" src="resources/js/produits.js"></script> -->
</body>
</html>