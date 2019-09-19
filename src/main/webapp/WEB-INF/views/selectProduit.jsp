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


	<h2>${msg}</h2>

	<c:forEach items="${myList}" var="serigraphie">
		<div id="popup1" class="overlay">
			<div class="popup">
				<h2>${serigraphie.designation}</h2>
				<!-- 			<a class="close" id="close" href="product/#">&times;</a> -->
				<div class="content">
					<div class="modele">
						<h3>${serigraphie.referenceProduit}</h3>
						<div class="radio-model">
							<i class="fas fa-tshirt"></i> <i class="fas fa-tshirt"></i> <i
								class="fas fa-tshirt"></i>
						</div>
						<!-- 					<input type="radio" name="" id=""> -->
						<!-- 					<input type="radio" name="" id="">  -->
						<!-- 					<input type="radio" name="" id=""> -->

						<c:forEach items="${modeles}" var="seri">
					<img src="${seri.image}" alt="${seri.label}" class="img-tshirt" style="width:50px;height:50px;" >
							<label for="${seri.label}">${seri.label}</label>
							<input type="radio" name="modele" value="${seri.label}">
						</c:forEach>
					</div>


					<img src="${serigraphie.photo}" alt="tshirt" class="img-tshirt" style="width:200px;height:200px;">

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
	</c:forEach>
	<!-- <script type="text/javascript" src="resources/js/produits.js"></script> -->
</body>
</html>