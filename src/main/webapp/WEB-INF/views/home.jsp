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
	content="Tee Graph, une semaine, 8 mod�les, qui defilent au gr�s de nos experts graffeurs! D�couvrez notre univers!">
<link href="<c:url value="/resources/css/font-awesome-4.7.0/css/font-awesome.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/styles.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.1.25/jquery.fancybox.min.css" />" rel="stylesheet">
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Roboto:300,400,700" />" rel="stylesheet">
<base href="
<%=request.getScheme() + "://" + request.getServerName() + ":" +
request.getServerPort() + request.getContextPath() + "/"%>" />


<meta content="IE=edge" http-equiv=X-UA-Compatible>
<meta content="width=device-width, initial-scale=1" name="viewport">
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <![endif]-->
</head>

<body>
	<header id="top" class="header">
		<div class="bandeau">
			<div class="gauche">
				<a href="index.html"><img src="resources/images/logo-Tee-Graph.png" alt=""></a>
			</div>
			<div class="droit">
				<div class="menu">
					<nav class="menu">
						<ul>
							<li><a id="actif" href="<c:url value="/" />">Accueil</a></li>
							<li><a href="atelier.html">Notre atelier</a></li>
							<li><a href="contact.html">Contact</a></li>
						</ul>
					</nav>
				</div>

				<div class="connection">
					<c:if test="${connecte == 'connecte'}">
						<h2>${user.nom}</h2>
						<a href="auth/member/${user.id}" alt="">Mon compte</a>
					</c:if>
					<c:if test="${connecte != 'connecte'}">
						<form method="post"
							action="${pageContext.request.contextPath}/auth/member"
							modelAttribute="userBean">
							<label for="identify">Identifiez-vous</label>
							<p>${msg}</p>
							<br> 
							<input type="text" name="email" placeholder="nom d'utilisateur"> <br> 
							<input type="password" name="password" placeholder="mot de passe"> <br> 
							<input type="submit" value="- GO -"> <br>
							<a href="${pageContext.request.contextPath}/auth/noMember"
								modelAttribute="cocoBean">Vous n'�tes pas encore membre!!!!<br>
							<strong>Cliquez ICI</strong></a>
						</form>
						</c:if>
						<div class="langue">
							<a id="francais" href=""><img
								src="resources/images/drapeau-francais.png" alt=""></a> <a id="anglais"
								href=""><img src="resources/images/drapeau-anglais.png" alt=""></a>
						</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<section class="introduction">
			<h1>
				Tee Graph. <br>Le Graffeur en s�rie!
			</h1>
			<p>
				15 jours, c'est le temps n�cessaire � nos petites mimines pour
				inventer, cr�er et innover dans la loi des s�ries!<br> C'est
				une culture populaire ouverte � tous! des murs s'en sont suivi les
				graffitis sur les metros, trains et tout endroit vide de couleurs et
				de punch! <br> alors pourquoi pas s'exprimer sur nous-meme!
				l'id�e lanc�e, nous avons cr�e TeeGraph. Atravers une large une
				gamme de tee shirts, sweat et pull, � l'impression bien tremp�e!
			</p>
		</section>
	</header>

	<h2 id="fiches">- D�couvrez notre s�lection -</h2>

	<section class="produits" id="fiches">
		<c:forEach items="${myList}" var="seri">
			<a href="product/${seri.designation}" id="${seri.designation}"
				class="link"><img alt="graph" src="${seri.photo}"
				class="img_product"></a>
		</c:forEach>
	</section>

	<section class="atelier">
		<p>
			Retrouvez notre newletter avec les dates de visite de notre atelier!
			<br> L'occasion pour vous, d'�changer avec notre �quipe, sur les
			techniques de s�rigraphies.
		</p>

		<img src="resources/images/atelier.jpg" alt="">
		<div class="clear"></div>
	</section>


	<h2>- BEST SELLERS DE LA SEMAINE DERNIERE | Derni�re chance les
		amis! -</h2>

	<section class="chance">
		<c:forEach items="${myBestSeller}" var="seri">
			<a href="product/${seri.designation}" id="${seri.designation}"
				class="link"><img alt="graph" src="${seri.photo}"
				class="img_product"></a>
		</c:forEach>

	</section>
	<section class="color"></section>

	<footer>
		<div class="logo">
			<img src="resources/images/logo-Tee-Graph-footer.png" alt="logo-TeeGraph">
		</div>
		<div class="sociaux">
			<p>Retrouvez-nous sur les r�seaux</p>
			<ul>
				<li><a href="#" class="btn-sociaux"><i
						class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
				<li><a href="#" class="btn-sociaux"><i
						class="fa fa-pinterest-square" aria-hidden="true"></i></a></li>
				<li><a href="#" class="btn-sociaux"><i
						class="fa fa-instagram" aria-hidden="true"></i></a></li>
			</ul>
		</div>
		<div class="adresse">
			<p>
				<strong>Tee-Graph. </strong><br> 7, rue du bonheur <br>
				80000 AMIENS <br> t�l: 03 22 30 00 00
			</p>
		</div>
		<div class="connection">
			<c:if test="${connecte == 'connecte'}">
				<h2>${user.nom}</h2>
				<a href="auth/member/${user.id}" alt="">Mon compte</a>
			</c:if>
			<c:if test="${connecte != 'connecte'}">
				<form action="connection" method="post" modelAttribute="">
					<label for="identify">Identifiez-vous</label> <br> <input
						type="text" name="utilisateur" placeholder="nom d'utilisateur">
					<br> <input type="password" name="password"
						placeholder="mot de passe"> <br> <input type="submit"
						value="- GO -"> <br> <a href="">Vous n'�tes pas
						encore membre!!!!<br>Cliquez ICI
					</a>
				</form>
			</c:if>
		</div>
		<div class="clear"></div>
		<div class="bottom">
			<a class="mention" href="#">MENTION LEGALES | RGPD</a>
			<p class="mention" href="">| Copyright TeeGraph.</p>
		</div>

	</footer>

	<a id="scrolltop"><img src="resources/images/scroll-logo-v2.png"
		alt="TeeGraph-up"></a>


	<!--JAVASCRIPT-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
		
	</script>
	<script type="text/javascript" language="javascript">
		$(window).scroll(function() {
			if ($(this).scrollTop() > 100) {
				$('#scrolltop').fadeIn();
			} else {
				$('#scrolltop').fadeOut();
			}
		});
		$('#scrolltop').click(function() {
			$("html,body").animate({
				scrollTop : 0
			}, 600);
			return false;
		});
	</script>

</body>

</html>
