<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tee Graph | atelier</title>
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-tee-graph.png">
    <meta name="description" content="Tee Graph, une semaine, 8 modèles, qui defilent au grès de nos experts graffeurs! Découvrez notre univers!">
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value="/resources/images/favicon-tee-graph.png" />">
	<link
		href="<c:url value="/resources/css/font-awesome-4.7.0/css/font-awesome.min.css" />"
		rel="stylesheet">
	<link href="<c:url value="/resources/css/styles.css" />"
		rel="stylesheet">
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
	<header id="accueil" class="header">
	    <div class="bandeau">
	        <div class="gauche">
				<a href="<c:url value="/" />">
					<img src="resources/images/logo-Tee-Graph.png" alt="">
				</a>
			</div>
	        <div class="droit">
	            <div class="menu">
	                <nav class="menu">
	                   <ul>
							<li><a href="<c:url value="/" />">
							<spring:message code="menu.actif" /></a></li>
							
							<li><a id="actif" href="<c:url value="/qui-sommes-nous/atelier"/>">
							<spring:message code="menu.workshop" /></a></li>
							
							<li><a href="<c:url value="/on-echange/contact"/>"><spring:message
										code="menu.contact" /></a></li>
						</ul>
	                </nav>
	            </div>
	
	            <div class="connection">
					<c:if test="${connecte == 'connecte'}">
		                <div class="membre">
		                    <h3><em>Espace membre:</em></h3>
		                    <p>Bienvenue <strong>${user.prenom}</strong></p>
		                    <a class="compte" href="auth/member/${user.id}" alt="mon compte"><spring:message
						code="auth.member" /></a>	
		                </div>
		                <div class="clear"></div>
					</c:if>
					<c:if test="${connecte != 'connecte'}">
						<form method="post"
							action="${pageContext.request.contextPath}/auth/member"
							modelAttribute="userBean">
							<label for="identify"><spring:message code="identification.member" /></label>
							<p>${msg}</p>

							<input type="text" name="email" placeholder="nom d'utilisateur">
							<br> <input type="password" name="password"
								placeholder="mot de passe"> <br> <input
								type="submit" value="- GO -"> <br> <a
								href="${pageContext.request.contextPath}/auth/noMember"
								modelAttribute="cocoBean"><spring:message
									code="noMember.auth" /><br> <strong><spring:message
										code="noMember.clic" /></strong></a>
						</form>
					</c:if>
                    <div class="langue">
                        <a id="francais"  href="${requestScope['javax.servlet.forward.request_uri']}?lang=fr"><img src="<c:url value="/resources/images/drapeau-francais.png" />" alt=""></a>
                        <a id="anglais" href="${requestScope['javax.servlet.forward.request_uri']}?lang=en"><img src="<c:url value="/resources/images/drapeau-anglais.png" />" alt=""></a>
            	    </div>

				</div>
	            <div class="clear"></div>
	        </div>
	    </div>
	    <section class="introduction">
	        <h1>Tee Graph. <br>L'inventeur en série!</h1>
	        <p> Notre atelier situé au coeur d'Amiens vous ouvre ses portes régulièrement. <br>
	        Notre fine équipe vous guidera tout au long de la visite à travers les différents secteurs d'activité, de créativité et de réalisation. <br>
	        Pour l'occasion, vous pouvez meme venir avec votre propre modele! si la qualité est optimisé, nous mettrons en oeuvre sa realisation en direct devant vous!<br>
	        Et encore mieux, si le modele nous épate, nous le lanceront officiellement sur notre site avec votre nom de créateur!
	        </p>
	    </section>
	</header>

	<h2>- Nos produits fards -</h2> 


	<section class="atelier">
	    <div class="valeur">
	        <p><span>Pour développer nos collections sérigraphiées, nous avons crée un véritable partenariat avec nos fournisseurs français dans le but d'avoir des produits 100% coton qui respectent les normes environnementales et bien plus!
	        <br>
	        Les colorations sont faites avec des produits naturels. 
	        <br>
	        Notre identité ne se definit pas que par la créations artistique car nous avons de grandes valeurs que nous defendons tel que le respect du climat et de la bio-diversité.</span></p>
	    </div>
	    <div class="modele">
	        <div id="slideshow">
	            <div>
	             <img src="resources/images/tee-shirt-atelier/th-bleu-clair.png">
	            </div>
	            <div>
	                <img src="resources/images/tee-shirt-atelier/tf-noir.png">
	            </div>
	            <div>
	             <img src="resources/images/tee-shirt-atelier/th-vert.png">
	            </div>
	            <div>
	             <img src="resources/images/tee-shirt-atelier/pull-rouge.png">
	            </div>
	            <div>
	             <img src="resources/images/tee-shirt-atelier/sw-noir.png">
	            </div>
	        </div>
	    
	    </div>
	    <div class="clear"></div>
	</section>


	<h2>- BEST SELLER DE LA SEMAINE DERNIERE | Dernière chance les amis!  -</h2>  
	 
	<section class="chance">
	    pour nous retrouver:
	    
	
	    
	</section>

    <section class="color"></section>
    
    <footer>
        <div class="logo">
            <img src="resources/images/logo-Tee-Graph-footer.png" alt="logo-TeeGraph">
        </div>
        <div class="sociaux">
           <p>Retrouvez-nous sur les réseaux </p>
            <ul>
                <li><a href="#" class="btn-sociaux"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                <li><a href="#" class="btn-sociaux"><i class="fa fa-pinterest-square" aria-hidden="true"></i></a></li>
                <li><a href="#" class="btn-sociaux"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
            </ul>
        </div>
        <div class="adresse">
        <p><strong>Tee-Graph. </strong><br>
        7, rue du bonheur <br>
        80000 AMIENS <br>
        tél: 03 22 30 00 00</p>
        </div>
         <div class="connection">
					<c:if test="${connecte == 'connecte'}">
		                <div class="membre">
		                    <h3><em>Espace membre:</em></h3>
		                    <p>Bienvenue <strong>${user.prenom}</strong></p>
		                    <a class="compte" href="auth/member/${user.id}" alt="mon compte"><spring:message
						code="auth.member" /></a>	
		                </div>
		                <div class="clear"></div>
					</c:if>
					<c:if test="${connecte != 'connecte'}">
						<form method="post"
							action="${pageContext.request.contextPath}/auth/member"
							modelAttribute="userBean">
							<label for="identify"><spring:message code="identification.member" /></label>
							<p>${msg}</p>

							<input type="text" name="email" placeholder="nom d'utilisateur">
							<br> <input type="password" name="password"
								placeholder="mot de passe"> <br> <input
								type="submit" value="- GO -"> <br> <a
								href="${pageContext.request.contextPath}/auth/noMember"
								modelAttribute="cocoBean"><spring:message
									code="noMember.auth" /><br> <strong><spring:message
										code="noMember.clic" /></strong></a>
						</form>
					</c:if>
				</div>
            <div class="clear"></div>
        <div class="bottom">
            <a class="mention" href="#">MENTION LEGALES | RGPD</a>
            <p class="mention" href="">| Copyright TeeGraph.</p>
        </div>
        
    </footer>
    
     <a id="scrolltop"><img src="images/scroll-logo-v2.png" alt="TeeGraph-up"></a>
 
       
<!--JAVASCRIPT-->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"> </script>
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
                scrollTop: 0
            }, 600);
            return false;
        });
        
        $("#slideshow > div:gt(0)").hide();

        setInterval(function() { 
          $('#slideshow > div:first')
            .fadeOut(200)
            .next()
            .fadeIn(2000)
            .end()
            .appendTo('#slideshow');
        },  4000);  
        
        
        
        
        
    </script>

</body>
</html>