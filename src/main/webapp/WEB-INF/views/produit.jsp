<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 
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
	content="Tee Graph, une semaine, 8 modèles, qui defilent au grès de nos experts graffeurs! Découvrez notre univers!">
<link href="<c:url value="/resources/css/font-awesome-4.7.0/css/font-awesome.min.css" />" rel="stylesheet">
    <link href="<c:url value="resources/css/styles.css" />" rel="stylesheet" >
    <link href="<c:url value="resources/css/style.css" />" rel="stylesheet" >
    <link href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.1.25/jquery.fancybox.min.css" />" rel="stylesheet">
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Roboto:300,400,700" />" rel="stylesheet">
<base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath() + "/"%>
" />


<meta content="IE=edge" http-equiv=X-UA-Compatible>
<meta content="width=device-width, initial-scale=1" name="viewport">
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <![endif]-->
</head>

<body>
	<c:forEach items="${myList}" var="serigraphie">









		<section id="graph1" class="collection fade prod1">
			<a class="prev" onclick="generalSlides(-1)"><i
				class="fa fa-step-backward" aria-hidden="true"></i> </a> <a class="next"
				onclick="generalSlides(1)"><i class="fa fa-step-forward"
				aria-hidden="true"></i> </a>

			<div class="prod">
				<div class="left">
					<img class="logo" src="resources/images/logo-Tee-Graph.png"
						alt="logo TeeGraph.">
					<div class="connection">
						<form action="${pageContext.request.contextPath}/auth/member" method="post" modelAttribute="userBean">
							<label for="identify">Identifiez-vous</label> <br> <input
								type="text" name="utilisateur" placeholder="nom d'utilisateur">
							<br> <input type="password" name="password"
								placeholder="mot de passe"> <br> <input
								type="submit" value="- GO -"> <br> <a href="${pageContext.request.contextPath}/auth/noMember"
								modelAttribute="cocoBean">Vous n'êtes pas encore membre!!!!<br>
							<strong>Cliquez ICI</strong>
							</a>
						</form>
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
					<a id="croix" href="#fiches"><i class="fa fa-times"
						aria-hidden="true"></i></a>

					<div class="gauche">

<!-- 						<div class="mySlides fade"> -->
<!-- 							<img src="images/graphiti-1.jpg" alt=""> -->
<!-- 						</div> -->
<!-- 						<div class="mySlides fade"> -->
<!-- 							<img src="images/produits/modele-1-f.jpg" alt=""> -->
<!-- 						</div> -->
<!-- 						<div class="mySlides fade"> -->
<!-- 							<img src="images/produits/modele-1-h.jpg" alt=""> -->
<!-- 						</div> -->
<!-- 						<div class="mySlides fade"> -->
<!-- 							<img src="images/produits/modele-1-p.jpg" alt=""> -->
<!-- 						</div> -->
<!-- 						<div class="mySlides fade"> -->
<!-- 							<img src="images/produits/modele-1-s.jpg" alt=""> -->
<!-- 						</div> -->
						<a class="prev" onclick="plusSlides(-1)"><i
							class="fa fa-chevron-left" aria-hidden="true"></i> </a> <a
							class="next" onclick="plusSlides(1)"><i
							class="fa fa-chevron-right" aria-hidden="true"></i> </a>
					</div>
					<div class="droit">
						<p class="titre">
							<span>T</span>aille:
						</p>
						<select name="" id="">
							<c:forEach items="${tailles}" var="taille">
								<option value="">${taille}</option>
							</c:forEach>
						</select>

						<p>
							<span>M</span>odèles:
						</p>
						
						<c:forEach items="${modeles}" var="seri">
					<img src="${seri.image}" alt="${seri.label}" class="img-tshirt" style="width:50px;height:50px;" >
							<label for="${seri.label}">${seri.label}</label>
							<input type="radio" name="${seri.label}" value="${seri.label}">
						</c:forEach>
<!-- 						<img src="images/fiches-prod/base-coupe-femme.png" -->
<!-- 							alt="tee-shirt femme" title="tee-shirt femme"> <input -->
<!-- 							type="radio"> <img -->
<!-- 							src="images/fiches-prod/base-homme-femme.png" -->
<!-- 							alt="tee-shirt homme" title="tee-shirt femme"> <input -->
<!-- 							type="radio"> <img src="images/fiches-prod/base-pull.png" -->
<!-- 							alt="pull" title="pull mixte"> <input type="radio"> -->
<!-- 						<img src="images/fiches-prod/base-sweat.png" alt="sweat" -->
<!-- 							title="sweat miste"> <input type="radio"> -->
						<p>
							<span>C</span>ouleur:
						</p>
<!-- 						<img class="color" -->
<!-- 							src="images/tee-shirt-atelier/th-bleu-clair.png" alt=""> <input -->
<!-- 							type="radio"> <img class="color" -->
<!-- 							src="images/tee-shirt-atelier/th-bleu-fonce.png" alt=""> <input -->
<!-- 							type="radio"> <img class="color" -->
<!-- 							src="images/tee-shirt-atelier/th-noir.png" alt=""> <input -->
<!-- 							type="radio"> <img class="color" -->
<!-- 							src="images/tee-shirt-atelier/th-orange.png" alt=""> <input -->
<!-- 							type="radio"> <img class="color" -->
<!-- 							src="images/tee-shirt-atelier/th-rouge.png" alt=""> <input -->
<!-- 							type="radio"> <img class="color" -->
<!-- 							src="images/tee-shirt-atelier/th-vert.png" alt=""> <input -->
<!-- 							type="radio"> -->
						<div class="boutons">
							<div class="boutonselect">
								<a class="panier" href=""><strong>Ajouter au panier</strong></a>
								<a class="commande" href=""><strong>Poursuivre la
										commande</strong></a>
							</div>
							<div class="clear"></div>
							<a class="valid" href=""><strong>Valider le panier</strong></a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</c:forEach>


























	<section id="graph1" class="collection fade prod1">
		<a class="prev" onclick="generalSlides(-1)"><i
			class="fa fa-step-backward" aria-hidden="true"></i> </a> <a class="next"
			onclick="generalSlides(1)"><i class="fa fa-step-forward"
			aria-hidden="true"></i> </a>

		<div class="prod">
			<div class="left">
				<img class="logo" src="images/logo-Tee-Graph.png"
					alt="logo TeeGraph.">
				<div class="connection">
					<form action="connection" method="post" modelAttribute="">
						<label for="identify">Identifiez-vous</label> <br> <input
							type="text" name="utilisateur" placeholder="nom d'utilisateur">
						<br> <input type="password" name="password"
							placeholder="mot de passe"> <br> <input
							type="submit" value="- GO -"> <br> <a href="">Vous
							n'êtes pas encore membre!!!!<br>
						<strong>Cliquez ICI</strong>
						</a>
					</form>
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
				<a id="croix" href="index.html#fiches"><i class="fa fa-times"
					aria-hidden="true"></i></a>

				<div class="gauche">

					<div class="mySlides fade">
						<img src="images/graphiti-1.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-1-f.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-1-h.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-1-p.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-1-s.jpg" alt="">
					</div>
					<a class="prev" onclick="plusSlides(-1)"><i
						class="fa fa-chevron-left" aria-hidden="true"></i> </a> <a
						class="next" onclick="plusSlides(1)"><i
						class="fa fa-chevron-right" aria-hidden="true"></i> </a>
				</div>
				<div class="droit">
					<p class="titre">
						<span>T</span>aille:
					</p>
					<select name="" id="">
						<option selected="selected" value="XL">XL</option>
						<option value="L">L</option>
						<option value="M">M</option>
						<option value="S">S</option>
					</select>

					<p>
						<span>M</span>odèles:
					</p>
					<img src="images/fiches-prod/base-coupe-femme.png"
						alt="tee-shirt femme" title="tee-shirt femme"> <input
						type="radio"> <img
						src="images/fiches-prod/base-homme-femme.png"
						alt="tee-shirt homme" title="tee-shirt femme"> <input
						type="radio"> <img src="images/fiches-prod/base-pull.png"
						alt="pull" title="pull mixte"> <input type="radio">
					<img src="images/fiches-prod/base-sweat.png" alt="sweat"
						title="sweat miste"> <input type="radio">
					<p>
						<span>C</span>ouleur:
					</p>
					<img class="color" src="images/tee-shirt-atelier/th-bleu-clair.png"
						alt=""> <input type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-bleu-fonce.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-noir.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-orange.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-rouge.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-vert.png" alt=""> <input
						type="radio">
					<div class="boutons">
						<div class="boutonselect">
							<a class="panier" href=""><strong>Ajouter au panier</strong></a>
							<a class="commande" href=""><strong>Poursuivre la
									commande</strong></a>
						</div>
						<div class="clear"></div>
						<a class="valid" href=""><strong>Valider le panier</strong></a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="graph2" class="collection fade prod2">
		<a class="prev" onclick="generalSlides(-1)"><i
			class="fa fa-step-backward" aria-hidden="true"></i> </a> <a class="next"
			onclick="generalSlides(1)"><i class="fa fa-step-forward"
			aria-hidden="true"></i> </a>
		<div class="prod">
			<div class="left">
				<img class="logo" src="images/logo-Tee-Graph.png"
					alt="logo TeeGraph.">
				<div class="connection">
					<form action="connection" method="post" modelAttribute="">
						<label for="identify">Identifiez-vous</label> <br> <input
							type="text" name="utilisateur" placeholder="nom d'utilisateur">
						<br> <input type="password" name="password"
							placeholder="mot de passe"> <br> <input
							type="submit" value="- GO -"> <br> <a href="">Vous
							n'êtes pas encore membre!!!!<br>
						<strong>Cliquez ICI</strong>
						</a>
					</form>
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
				<a id="croix" href="index.html#fiches"><i class="fa fa-times"
					aria-hidden="true"></i></a>

				<div class="gauche">

					<div class="mySlides fade">
						<img src="images/graphiti-2.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-2-f.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-2-h.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-2-p.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-2-s.jpg" alt="">
					</div>
					<a class="prev" onclick="plusSlides(-1)"><i
						class="fa fa-chevron-left" aria-hidden="true"></i> </a> <a
						class="next" onclick="plusSlides(1)"><i
						class="fa fa-chevron-right" aria-hidden="true"></i> </a>
				</div>
				<div class="droit">
					<p class="titre">
						<span>T</span>aille:
					</p>
					<select name="" id="">
						<option selected="selected" value="XL">XL</option>
						<option value="L">L</option>
						<option value="M">M</option>
						<option value="S">S</option>
					</select>

					<p>
						<span>M</span>odèles:
					</p>
					<img src="images/fiches-prod/base-coupe-femme.png"
						alt="tee-shirt femme" title="tee-shirt femme"> <input
						type="radio"> <img
						src="images/fiches-prod/base-homme-femme.png"
						alt="tee-shirt homme" title="tee-shirt femme"> <input
						type="radio"> <img src="images/fiches-prod/base-pull.png"
						alt="pull" title="pull mixte"> <input type="radio">
					<img src="images/fiches-prod/base-sweat.png" alt="sweat"
						title="sweat miste"> <input type="radio">
					<p>
						<span>C</span>ouleur:
					</p>
					<img class="color" src="images/tee-shirt-atelier/th-bleu-clair.png"
						alt=""> <input type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-bleu-fonce.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-noir.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-orange.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-rouge.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-vert.png" alt=""> <input
						type="radio">
					<div class="boutons">
						<div class="boutonselect">
							<a class="panier" href=""><strong>Ajouter au panier</strong></a>
							<a class="commande" href=""><strong>Poursuivre la
									commande</strong></a>
						</div>
						<div class="clear"></div>
						<a class="valid" href=""><strong>Valider le panier</strong></a>
					</div>
				</div>
			</div>
		</div>

	</section>

	<section class="collection fade prod3">
		<a class="prev" onclick="generalSlides(-1)"><i
			class="fa fa-step-backward" aria-hidden="true"></i> </a> <a class="next"
			onclick="generalSlides(1)"><i class="fa fa-step-forward"
			aria-hidden="true"></i> </a>
		<div class="prod">
			<div class="left">
				<img class="logo" src="images/logo-Tee-Graph.png"
					alt="logo TeeGraph.">
				<div class="connection">
					<form action="connection" method="post" modelAttribute="">
						<label for="identify">Identifiez-vous</label> <br> <input
							type="text" name="utilisateur" placeholder="nom d'utilisateur">
						<br> <input type="password" name="password"
							placeholder="mot de passe"> <br> <input
							type="submit" value="- GO -"> <br> <a href="">Vous
							n'êtes pas encore membre!!!!<br>
						<strong>Cliquez ICI</strong>
						</a>
					</form>
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
				<a id="croix" href="index.html#fiches"><i class="fa fa-times"
					aria-hidden="true"></i></a>

				<div class="gauche">

					<div class="mySlides fade">
						<img src="images/graphiti-3.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-3-f.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-3-h.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-3-p.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-3-s.jpg" alt="">
					</div>
					<a class="prev" onclick="plusSlides(-1)"><i
						class="fa fa-chevron-left" aria-hidden="true"></i> </a> <a
						class="next" onclick="plusSlides(1)"><i
						class="fa fa-chevron-right" aria-hidden="true"></i> </a>
				</div>
				<div class="droit">
					<p class="titre">
						<span>T</span>aille:
					</p>
					<select name="" id="">
						<option selected="selected" value="XL">XL</option>
						<option value="L">L</option>
						<option value="M">M</option>
						<option value="S">S</option>
					</select>

					<p>
						<span>M</span>odèles:
					</p>
					<img src="images/fiches-prod/base-coupe-femme.png"
						alt="tee-shirt femme" title="tee-shirt femme"> <input
						type="radio"> <img
						src="images/fiches-prod/base-homme-femme.png"
						alt="tee-shirt homme" title="tee-shirt femme"> <input
						type="radio"> <img src="images/fiches-prod/base-pull.png"
						alt="pull" title="pull mixte"> <input type="radio">
					<img src="images/fiches-prod/base-sweat.png" alt="sweat"
						title="sweat miste"> <input type="radio">
					<p>
						<span>C</span>ouleur:
					</p>
					<img class="color" src="images/tee-shirt-atelier/th-bleu-clair.png"
						alt=""> <input type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-bleu-fonce.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-noir.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-orange.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-rouge.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-vert.png" alt=""> <input
						type="radio">
					<div class="boutons">
						<div class="boutonselect">
							<a class="panier" href=""><strong>Ajouter au panier</strong></a>
							<a class="commande" href=""><strong>Poursuivre la
									commande</strong></a>
						</div>
						<div class="clear"></div>
						<a class="valid" href=""><strong>Valider le panier</strong></a>
					</div>
				</div>
			</div>
		</div>

	</section>

	<section class="collection fade prod4">
		<a class="prev" onclick="generalSlides(-1)"><i
			class="fa fa-step-backward" aria-hidden="true"></i> </a> <a class="next"
			onclick="generalSlides(1)"><i class="fa fa-step-forward"
			aria-hidden="true"></i> </a>
		<div class="prod">
			<div class="left">
				<img class="logo" src="images/logo-Tee-Graph.png"
					alt="logo TeeGraph.">
				<div class="connection">
					<form action="connection" method="post" modelAttribute="">
						<label for="identify">Identifiez-vous</label> <br> <input
							type="text" name="utilisateur" placeholder="nom d'utilisateur">
						<br> <input type="password" name="password"
							placeholder="mot de passe"> <br> <input
							type="submit" value="- GO -"> <br> <a href="">Vous
							n'êtes pas encore membre!!!!<br>
						<strong>Cliquez ICI</strong>
						</a>
					</form>
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
				<a id="croix" href="index.html#fiches"><i class="fa fa-times"
					aria-hidden="true"></i></a>

				<div class="gauche">

					<div class="mySlides fade">
						<img src="images/graphiti-4.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-4-f.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-4-h.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-4-p.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-4-s.jpg" alt="">
					</div>
					<a class="prev" onclick="plusSlides(-1)"><i
						class="fa fa-chevron-left" aria-hidden="true"></i> </a> <a
						class="next" onclick="plusSlides(1)"><i
						class="fa fa-chevron-right" aria-hidden="true"></i> </a>
				</div>
				<div class="droit">
					<p class="titre">
						<span>T</span>aille:
					</p>
					<select name="" id="">
						<option selected="selected" value="XL">XL</option>
						<option value="L">L</option>
						<option value="M">M</option>
						<option value="S">S</option>
					</select>

					<p>
						<span>M</span>odèles:
					</p>
					<img src="images/fiches-prod/base-coupe-femme.png"
						alt="tee-shirt femme" title="tee-shirt femme"> <input
						type="radio"> <img
						src="images/fiches-prod/base-homme-femme.png"
						alt="tee-shirt homme" title="tee-shirt femme"> <input
						type="radio"> <img src="images/fiches-prod/base-pull.png"
						alt="pull" title="pull mixte"> <input type="radio">
					<img src="images/fiches-prod/base-sweat.png" alt="sweat"
						title="sweat miste"> <input type="radio">
					<p>
						<span>C</span>ouleur:
					</p>
					<img class="color" src="images/tee-shirt-atelier/th-bleu-clair.png"
						alt=""> <input type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-bleu-fonce.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-noir.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-orange.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-rouge.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-vert.png" alt=""> <input
						type="radio">
					<div class="boutons">
						<div class="boutonselect">
							<a class="panier" href=""><strong>Ajouter au panier</strong></a>
							<a class="commande" href=""><strong>Poursuivre la
									commande</strong></a>
						</div>
						<div class="clear"></div>
						<a class="valid" href=""><strong>Valider le panier</strong></a>
					</div>
				</div>
			</div>
		</div>

	</section>

	<section class="collection fade prod5">
		<a class="prev" onclick="generalSlides(-1)"><i
			class="fa fa-step-backward" aria-hidden="true"></i> </a> <a class="next"
			onclick="generalSlides(1)"><i class="fa fa-step-forward"
			aria-hidden="true"></i> </a>
		<div class="prod">
			<div class="left">
				<img class="logo" src="images/logo-Tee-Graph.png"
					alt="logo TeeGraph.">
				<div class="connection">
					<form action="connection" method="post" modelAttribute="">
						<label for="identify">Identifiez-vous</label> <br> <input
							type="text" name="utilisateur" placeholder="nom d'utilisateur">
						<br> <input type="password" name="password"
							placeholder="mot de passe"> <br> <input
							type="submit" value="- GO -"> <br> <a href="">Vous
							n'êtes pas encore membre!!!!<br>
						<strong>Cliquez ICI</strong>
						</a>
					</form>
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
				<a id="croix" href="index.html#fiches"><i class="fa fa-times"
					aria-hidden="true"></i></a>

				<div class="gauche">

					<div class="mySlides fade">
						<img src="images/graphiti-5.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-5-f.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-5-h.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-5-p.jpg" alt="">
					</div>
					<div class="mySlides fade">
						<img src="images/produits/modele-5-s.jpg" alt="">
					</div>
					<a class="prev" onclick="plusSlides(-1)"><i
						class="fa fa-chevron-left" aria-hidden="true"></i> </a> <a
						class="next" onclick="plusSlides(1)"><i
						class="fa fa-chevron-right" aria-hidden="true"></i> </a>
				</div>
				<div class="droit">
					<p class="titre">
						<span>T</span>aille:
					</p>
					<select name="" id="">
						<option selected="selected" value="XL">XL</option>
						<option value="L">L</option>
						<option value="M">M</option>
						<option value="S">S</option>
					</select>

					<p>
						<span>M</span>odèles:
					</p>
					<img src="images/fiches-prod/base-coupe-femme.png"
						alt="tee-shirt femme" title="tee-shirt femme"> <input
						type="radio"> <img
						src="images/fiches-prod/base-homme-femme.png"
						alt="tee-shirt homme" title="tee-shirt femme"> <input
						type="radio"> <img src="images/fiches-prod/base-pull.png"
						alt="pull" title="pull mixte"> <input type="radio">
					<img src="images/fiches-prod/base-sweat.png" alt="sweat"
						title="sweat miste"> <input type="radio">
					<p>
						<span>C</span>ouleur:
					</p>
					<img class="color" src="images/tee-shirt-atelier/th-bleu-clair.png"
						alt=""> <input type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-bleu-fonce.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-noir.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-orange.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-rouge.png" alt=""> <input
						type="radio"> <img class="color"
						src="images/tee-shirt-atelier/th-vert.png" alt=""> <input
						type="radio">
					<div class="boutons">
						<div class="boutonselect">
							<a class="panier" href=""><strong>Ajouter au panier</strong></a>
							<a class="commande" href=""><strong>Poursuivre la
									commande</strong></a>
						</div>
						<div class="clear"></div>
						<a class="valid" href=""><strong>Valider le panier</strong></a>
					</div>
				</div>
			</div>
		</div>

	</section>

	<!--
<section class="collection fade prod6">
    <a class="prev" onclick="generalSlides(-1)"><i class="fa fa-step-backward" aria-hidden="true"></i>
    </a>
    <a class="next" onclick="generalSlides(1)"><i class="fa fa-step-forward" aria-hidden="true"></i>
    </a>
    <div class="prod">
        <div class="left">
            <img class="logo" src="images/logo-Tee-Graph.png" alt="logo TeeGraph.">
            <div class="connection"> 
                <form action="connection" method="post" modelAttribute="">
                    <label for="identify">Identifiez-vous</label>
                    <br>
                    <input type="text" name="utilisateur" placeholder="nom d'utilisateur">
                    <br>
                    <input type="password" name="password" placeholder="mot de passe">
                    <br>
                    <input type="submit" value="- GO -">
                    <br>
                    <a href="">Vous n'êtes pas encore membre!!!!<br><strong>Cliquez ICI</strong></a>
                </form> 
            </div>
            <div class="sociaux">
                <ul>
                    <li><a href="#" class="btn-sociaux"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                    <li><a href="#" class="btn-sociaux"><i class="fa fa-pinterest-square" aria-hidden="true"></i></a></li>
                    <li><a href="#" class="btn-sociaux"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                </ul>
            </div>

        </div>

        <div class="detail">
            <a id="croix" href="index.html#fiches"><i class="fa fa-times" aria-hidden="true"></i></a>

            <div class="gauche">

                <div class="mySlides fade">
                    <img src="images/graphiti-6.jpg" alt="">
                </div>
                <div class="mySlides fade">
                    <img src="images/produits/modele-6-f.jpg" alt="">
                </div>
                <div class="mySlides fade">
                    <img src="images/produits/modele-6-h.jpg" alt="">
                </div>
                <div class="mySlides fade">
                    <img src="images/produits/modele-6-p.jpg" alt="">
                </div>
                <div class="mySlides fade">
                    <img src="images/produits/modele-6-s.jpg" alt="">
                </div>
                <a class="prev" onclick="plusSlides(-1)"><i class="fa fa-chevron-left" aria-hidden="true"></i>
                </a>
                <a class="next" onclick="plusSlides(1)"><i class="fa fa-chevron-right" aria-hidden="true"></i>
                </a>
            </div>
            <div class="droit">
                <p class="titre"><span>T</span>aille:</p>
                <select name="" id="">
                    <option selected="selected" value="XL">XL</option>
                    <option value="L">L</option>
                    <option value="M">M</option>
                    <option value="S">S</option>
                </select>

                <p><span>M</span>odèles:</p>
                    <img src="images/fiches-prod/base-coupe-femme.png" alt="tee-shirt femme" title="tee-shirt femme">
                     <input type="radio">
                    <img src="images/fiches-prod/base-homme-femme.png" alt="tee-shirt homme" title="tee-shirt femme">
                     <input type="radio">
                    <img src="images/fiches-prod/base-pull.png" alt="pull" title="pull mixte">
                     <input type="radio">
                    <img src="images/fiches-prod/base-sweat.png" alt="sweat" title="sweat miste">
                     <input type="radio">
                    <p><span>C</span>ouleur:</p>
                    <img class="color" src="images/tee-shirt-atelier/th-bleu-clair.png" alt="">
                    <input type="radio">
                    <img class="color" src="images/tee-shirt-atelier/th-bleu-fonce.png" alt="">          
                    <input type="radio">
                    <img class="color" src="images/tee-shirt-atelier/th-noir.png" alt="">
                    <input type="radio">
                    <img class="color" src="images/tee-shirt-atelier/th-orange.png" alt="">
                    <input type="radio">
                    <img class="color" src="images/tee-shirt-atelier/th-rouge.png" alt="">
                    <input type="radio">
                    <img class="color" src="images/tee-shirt-atelier/th-vert.png" alt="">
                    <input type="radio">
                <div class="boutons">
                   <div class="boutonselect">
                    <a class="panier" href=""><strong>Ajouter au panier</strong></a>
                    <a class="commande" href=""><strong>Poursuivre la commande</strong></a>
                    </div>
                    <div class="clear"></div>
                    <a class="valid" href=""><strong>Valider le panier</strong></a>
                </div>
            </div>
        </div>
    </div>

</section>

<section class="collection fade prod7">
    <a class="prev" onclick="generalSlides(-1)"><i class="fa fa-step-backward" aria-hidden="true"></i>
    </a>
    <a class="next" onclick="generalSlides(1)"><i class="fa fa-step-forward" aria-hidden="true"></i>
    </a>
    <div class="prod">
        <div class="left">
            <img class="logo" src="images/logo-Tee-Graph.png" alt="logo TeeGraph.">
            <div class="connection"> 
                <form action="connection" method="post" modelAttribute="">
                    <label for="identify">Identifiez-vous</label>
                    <br>
                    <input type="text" name="utilisateur" placeholder="nom d'utilisateur">
                    <br>
                    <input type="password" name="password" placeholder="mot de passe">
                    <br>
                    <input type="submit" value="- GO -">
                    <br>
                    <a href="">Vous n'êtes pas encore membre!!!!<br><strong>Cliquez ICI</strong></a>
                </form> 
            </div>
            <div class="sociaux">
                <ul>
                    <li><a href="#" class="btn-sociaux"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                    <li><a href="#" class="btn-sociaux"><i class="fa fa-pinterest-square" aria-hidden="true"></i></a></li>
                    <li><a href="#" class="btn-sociaux"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                </ul>
            </div>

        </div>

        <div class="detail">
            <a id="croix" href="index.html#fiches"><i class="fa fa-times" aria-hidden="true"></i></a>

            <div class="gauche">

                <div class="mySlides fade">
                    <img src="images/graphiti-7.jpg" alt="">
                </div>
                <div class="mySlides fade">
                    <img src="images/produits/modele-7-f.jpg" alt="">
                </div>
                <div class="mySlides fade">
                    <img src="images/produits/modele-7-h.jpg" alt="">
                </div>
                <div class="mySlides fade">
                    <img src="images/produits/modele-7-p.jpg" alt="">
                </div>
                <div class="mySlides fade">
                    <img src="images/produits/modele-7-s.jpg" alt="">
                </div>
                <a class="prev" onclick="plusSlides(-1)"><i class="fa fa-chevron-left" aria-hidden="true"></i>
                </a>
                <a class="next" onclick="plusSlides(1)"><i class="fa fa-chevron-right" aria-hidden="true"></i>
                </a>
            </div>
            <div class="droit">
                <p class="titre"><span>T</span>aille:</p>
                <select name="" id="">
                    <option selected="selected" value="XL">XL</option>
                    <option value="L">L</option>
                    <option value="M">M</option>
                    <option value="S">S</option>
                </select>

                <p><span>M</span>odèles:</p>
                    <img src="images/fiches-prod/base-coupe-femme.png" alt="tee-shirt femme" title="tee-shirt femme">
                     <input type="radio">
                    <img src="images/fiches-prod/base-homme-femme.png" alt="tee-shirt homme" title="tee-shirt femme">
                     <input type="radio">
                    <img src="images/fiches-prod/base-pull.png" alt="pull" title="pull mixte">
                     <input type="radio">
                    <img src="images/fiches-prod/base-sweat.png" alt="sweat" title="sweat miste">
                     <input type="radio">
                    <p><span>C</span>ouleur:</p>
                    <img class="color" src="images/tee-shirt-atelier/th-bleu-clair.png" alt="">
                    <input type="radio">
                    <img class="color" src="images/tee-shirt-atelier/th-bleu-fonce.png" alt="">          
                    <input type="radio">
                    <img class="color" src="images/tee-shirt-atelier/th-noir.png" alt="">
                    <input type="radio">
                    <img class="color" src="images/tee-shirt-atelier/th-orange.png" alt="">
                    <input type="radio">
                    <img class="color" src="images/tee-shirt-atelier/th-rouge.png" alt="">
                    <input type="radio">
                    <img class="color" src="images/tee-shirt-atelier/th-vert.png" alt="">
                    <input type="radio">
                <div class="boutons">
                   <div class="boutonselect">
                    <a class="panier" href=""><strong>Ajouter au panier</strong></a>
                    <a class="commande" href=""><strong>Poursuivre la commande</strong></a>
                    </div>
                    <div class="clear"></div>
                    <a class="valid" href=""><strong>Valider le panier</strong></a>
                </div>
            </div>
        </div>
    </div>

</section>

<section class="collection fade prod8">
    <a class="prev" onclick="generalSlides(-1)"><i class="fa fa-step-backward" aria-hidden="true"></i>
    </a>
    <a class="next" onclick="generalSlides(1)"><i class="fa fa-step-forward" aria-hidden="true"></i>
    </a>
    <div class="prod">
        <div class="left">
            <img class="logo" src="images/logo-Tee-Graph.png" alt="logo TeeGraph.">
            <div class="connection"> 
                <form action="connection" method="post" modelAttribute="">
                    <label for="identify">Identifiez-vous</label>
                    <br>
                    <input type="text" name="utilisateur" placeholder="nom d'utilisateur">
                    <br>
                    <input type="password" name="password" placeholder="mot de passe">
                    <br>
                    <input type="submit" value="- GO -">
                    <br>
                    <a href="">Vous n'êtes pas encore membre!!!!<br><strong>Cliquez ICI</strong></a>
                </form> 
            </div>
            <div class="sociaux">
                <ul>
                    <li><a href="#" class="btn-sociaux"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                    <li><a href="#" class="btn-sociaux"><i class="fa fa-pinterest-square" aria-hidden="true"></i></a></li>
                    <li><a href="#" class="btn-sociaux"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                </ul>
            </div>

        </div>

        <div class="detail">
            <a id="croix" href="index.html#fiches"><i class="fa fa-times" aria-hidden="true"></i></a>

            <div class="gauche">

                <div class="mySlides fade">
                    <img src="images/graphiti-8.jpg" alt="">
                </div>
                <div class="mySlides fade">
                    <img src="images/produits/modele-8-f.jpg" alt="">
                </div>
                <div class="mySlides fade">
                    <img src="images/produits/modele-8-h.jpg" alt="">
                </div>
                <div class="mySlides fade">
                    <img src="images/produits/modele-8-p.jpg" alt="">
                </div>
                <div class="mySlides fade">
                    <img src="images/produits/modele-8-s.jpg" alt="">
                </div>
                <a class="prev" onclick="plusSlides(-1)"><i class="fa fa-chevron-left" aria-hidden="true"></i>
                </a>
                <a class="next" onclick="plusSlides(1)"><i class="fa fa-chevron-right" aria-hidden="true"></i>
                </a>
            </div>
            <div class="droit">
                <p class="titre"><span>T</span>aille:</p>
                <select name="" id="">
                    <option selected="selected" value="XL">XL</option>
                    <option value="L">L</option>
                    <option value="M">M</option>
                    <option value="S">S</option>
                </select>

                <p><span>M</span>odèles:</p>
                    <img src="images/fiches-prod/base-coupe-femme.png" alt="tee-shirt femme" title="tee-shirt femme">
                     <input type="radio">
                    <img src="images/fiches-prod/base-homme-femme.png" alt="tee-shirt homme" title="tee-shirt femme">
                     <input type="radio">
                    <img src="images/fiches-prod/base-pull.png" alt="pull" title="pull mixte">
                     <input type="radio">
                    <img src="images/fiches-prod/base-sweat.png" alt="sweat" title="sweat miste">
                     <input type="radio">
                    <p><span>C</span>ouleur:</p>
                    <img class="color" src="images/tee-shirt-atelier/th-bleu-clair.png" alt="">
                    <input type="radio">
                    <img class="color" src="images/tee-shirt-atelier/th-bleu-fonce.png" alt="">          
                    <input type="radio">
                    <img class="color" src="images/tee-shirt-atelier/th-noir.png" alt="">
                    <input type="radio">
                    <img class="color" src="images/tee-shirt-atelier/th-orange.png" alt="">
                    <input type="radio">
                    <img class="color" src="images/tee-shirt-atelier/th-rouge.png" alt="">
                    <input type="radio">
                    <img class="color" src="images/tee-shirt-atelier/th-vert.png" alt="">
                    <input type="radio">
                <div class="boutons">
                   <div class="boutonselect">
                    <a class="panier" href=""><strong>Ajouter au panier</strong></a>
                    <a class="commande" href=""><strong>Poursuivre la commande</strong></a>
                    </div>
                    <div class="clear"></div>
                    <a class="valid" href=""><strong>Valider le panier</strong></a>
                </div>
            </div>
        </div>
    </div>

</section>
-->

	<!--JAVASCRIPT-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
		
	</script>

	<script type="text/javascript" language="javascript">
		/*javascript galerie d'image produit*/
		var slideIndex = 1;

		/* javascript page produit*/
		var slideIndexGen = 1;

		showSlides(slideIndex);

		// Next/previous controle
		function plusSlides(n) {
			showSlides(slideIndex += n);
		}

		function showSlides(n) {
			var i;
			var slides = document
					.querySelectorAll(`.prod${slideIndexGen} .mySlides`);
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
	</script>

</body>

</html>