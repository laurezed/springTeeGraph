<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="fr">

<head>
<meta charset="UTF-8">
<title>Tee Graph</title>
<meta name="description"
	content="Tee Graph, une semaine, 8 modï¿½les, qui defilent au grï¿½s de nos experts graffeurs! Dï¿½couvrez notre univers!">
<link
	href="<c:url value="/resources/css/font-awesome-4.7.0/css/font-awesome.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/styles.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link
	href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.1.25/jquery.fancybox.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="https://fonts.googleapis.com/css?family=Roboto:300,400,700" />"
	rel="stylesheet">
<base
	href="
<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath() + "/"%>" />

<meta content="IE=edge" http-equiv=X-UA-Compatible>
<meta content="width=device-width, initial-scale=1" name="viewport">
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <![endif]-->
</head>

<body>
	<c:forEach items="${myList}" var="seri" varStatus="loop">
		<section id="graph${loop.index+1}"
			class="collection fade prod${loop.index+1} ">
			<a class="prev" onclick="generalSlides(-1)"> <i
				class="fa fa-step-backward" aria-hidden="true"></i>
			</a> <a class="next" onclick="generalSlides(1)"> <i
				class="fa fa-step-forward" aria-hidden="true"></i>
			</a>

			<div class="prod">
				<div class="left">
					<img class="logo" src="resources/images/logo-Tee-Graph.png"
						alt="logo TeeGraph.">
					<div class="connection">
						<c:if test="${connecte == 'connecte'}">
							<h2>${user.nom}</h2>
							<a href="auth/member/${user.id}" alt="">Mon compte</a>
						</c:if>
						<c:if test="${connecte != 'connecte'}">
							<form action="${pageContext.request.contextPath}/auth/member"
								method="post" modelAttribute="userBean">
								<label for="identify">Identifiez-vous</label>
								<p>${msg}</p>
								<br> <input type="text" name="email"
									placeholder="nom d'utilisateur"> <br> <input
									type="password" name="password" placeholder="mot de passe">
								<br> <input type="submit" value="- GO -"> <br>
								<a href="${pageContext.request.contextPath}/auth/noMember">Vous
									n'ï¿½tes pas encore membre!!!!<br> <strong>Cliquez
										ICI</strong>
								</a>
							</form>
						</c:if>
					</div>
					<div class="sociaux">
						<ul>
							<li><a href="#" class="btn-sociaux"><i
									class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
							<li><a href="#" class="btn-sociaux"><i
									class="fa fa-pinterest-square" aria-hidden="true"></i></a></li>
							<li><a href="#" class="btn-sociaux"><i
									class="fa fa-instagram" aria-hidden="true"></i></a></li>
						</ul>
					</div>

				</div>

				<div class="detail">
					<a id="croix" href="#fiches"> <i class="fa fa-times"
						aria-hidden="true"></i>
					</a>

					<div class="gauche">

						<div class="mySlides i${loop.index+1} fade">
							<img src="${seri.photo}" alt="">
						</div>
						<div class="mySlides i${loop.index+1} fade">
							<img src="${seri.modeleTFemme}" alt="">
						</div>
						<div class="mySlides i${loop.index+1} fade">
							<img src="${seri.modeleTHomme}" alt="">
						</div>
						<div class="mySlides i${loop.index+1} fade">
							<img src="${seri.modelePull}" alt="">
						</div>
						<div class="mySlides i${loop.index+1} fade">
							<img src="${seri.modeleSweat}" alt="">
						</div>
						<a class="prev" onclick="plusSlides(-1)"><i
							class="fa fa-chevron-left" aria-hidden="true"></i> </a> <a
							class="next" onclick="plusSlides(1)"><i
							class="fa fa-chevron-right" aria-hidden="true"></i> </a>
					</div>
					<div class="droit">
						<div>
							<p>
								<span>M</span>odèles:
							</p>
							<c:forEach items="${modeles}" var="modele">
								<img src="${modele.image}" alt="${modele.label}"
									title="${modele.label}">
								<input id="${modele.label}" value="${modele.label}" type="radio"
									name="modele">
							</c:forEach>
						</div>
						<div id="">
							<p class="titre">
								<span>T</span>aille:
							</p>
							<select name="" class="tailleSelect" id="tailles-${loop.index+1}">
								<c:forEach items="${tailles}" var="taille">
									<option value="${tailles}">${taille}</option>
								</c:forEach>
							</select>
						</div>
						<div id="couleurs">
							<p>
								<span>C</span>ouleur:
							</p>
							<img class="color"
								src="resources/images/tee-shirt-atelier/th-bleu-clair.png"
								alt=""> <input type="radio" name="couleur"
								value="bleuclair"> <img class="color"
								src="resources/images/tee-shirt-atelier/th-bleu-fonce.png"
								alt=""> <input type="radio" name="couleur"
								value="bleufonce"> <img class="color"
								src="resources/images/tee-shirt-atelier/th-noir.png" alt="">
							<input type="radio" name="couleur" value="noir"> <img
								class="color"
								src="resources/images/tee-shirt-atelier/th-orange.png" alt="">
							<input type="radio" name="couleur" value="orange"> <img
								class="color"
								src="resources/images/tee-shirt-atelier/th-rouge.png" alt="">
							<input type="radio" name="couleur" value="rouge"> <img
								class="color"
								src="resources/images/tee-shirt-atelier/th-vert.png" alt="">
							<input type="radio" name="couleur" value="vert">
						</div>
						<div class="boutons">
							<div class="boutonselect">
								<a class="panier" data-serigraphie="${seri.designation}"
									id="prod${loop.index+1}" href=""> <strong>Ajouter
										au panier</strong>
								</a>
								<!-- 								<button class="panier" id="panier"><strong>Ajouter au panier</button> -->
								<a class="commande" href=""> <strong>Valider le
										panier</strong>
								</a>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</c:forEach>


	<form:form id="produitForm" method="post" action="${pageContext.request.contextPath}/commande/"
		modelAttribute="produitForm">
		<input type="text" name="serigraphie">
		<br>
		<input type="text" name="color">
		<br>
		<input type="text" name="taille" id="tailleInput">
		<br>
		<input type="text" name="modele">
		<br>
	</form:form>

	<!--JAVASCRIPT-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
		
	</script>

	<script type="text/javascript" language="javascript">
		/*javascript galerie d'image produit*/
		var slideIndex = 1;

		/* javascript page produit*/
		var slideIndexGen = 1;

		// Next/previous controle
		function plusSlides(n) {
			showSlides(slideIndex += n);
		}

		function showSlides(n) {
			var i;
			let classSelector = ".prod" + slideIndexGen + " .mySlides";
			// 			console.log("classe selector = ", classSelector);
			var slides = document.querySelectorAll(classSelector);
			// 			console.log("slides = ", slides);
			// 			console.log("index = ", slideIndexGen);
			if (n > slides.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = slides.length
			}
			if (n === 1) {
				slideIndex = 1
			}
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slides[slideIndex - 1].style.display = "block";

		};

		showSlidesGen(slideIndexGen);

		// Next/previous controle
		function generalSlides(n) {
			showSlidesGen(slideIndexGen += n);
		}

		function showSlidesGen(n) {
			var i;
			var slidesGen = document.getElementsByClassName("collection");
			// 			console.log("Slides gen = ", slidesGen);
			if (n > slidesGen.length) {
				slideIndexGen = 1
			}
			if (n < 1) {
				slideIndexGen = slidesGen.length
			}
			for (i = 0; i < slidesGen.length; i++) {
				slidesGen[i].style.display = "none";
			}
			slidesGen[slideIndexGen - 1].style.display = "block";
			showSlides(1);

		};

		showSlides(slideIndex);
	</script>

	<script>
		$(".tailleSelect").change(function(e) {
			var input = document.getElementById("tailleInput");
			input.value = this.options[this.selectedIndex].text;
			alert(this.selectedIndex);
		})
	</script>

	<script>
		$("a.panier").click(function(e) {
			e.preventDefault();
			var monLien = this;
			var form = document.getElementById("produitForm");
			var modele = document
					.querySelector('input[type="radio"][name = "modele"]:checked').value;
			var couleur = document
					.querySelector('input[type="radio"][name = "couleur"]:checked').value;
			alert(modele);
			form.elements.serigraphie.value = monLien.dataset.serigraphie;
			form.elements.color.value = couleur;
			form.elements.modele.value = modele;
			form.submit();
		});
	</script>





</body>

</html>
