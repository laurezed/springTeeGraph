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
    <title>Tee Graph | espace membre</title>
<link rel="icon" type="image/png" sizes="16x16" href="<c:url value="/resources/images/favicon-tee-graph.png" />">

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

<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <![endif]-->
<!--[if IE 7]>
        <link href="css/stylesie7.css" rel="stylesheet" type="text/css" media="screen">
    <![endif]-->
<!------------------------------------RESPONSIVE----------------------------->
<meta content="IE=edge" http-equiv=X-UA-Compatible>
<meta content="width=device-width, initial-scale=1" name="viewport">

</head>

<body>

<header id="member" class="header">
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
							<li><a id="actif" href="<c:url value="/" />">
							<spring:message code="menu.actif" /></a></li>
							
							<li><a href="<c:url value="/qui-sommes-nous/atelier"/>">
							<spring:message code="menu.workshop" /></a></li>
							
							<li><a href="<c:url value="/on-echange/contact"/>"><spring:message
										code="menu.contact" /></a></li>
						</ul>
                </nav>
            </div>
                <div class="membre">
                    <h3><em>Espace membre:</em></h3>
                    <p>Bienvenue <strong>${userToModify.prenom}</strong></p>
                
                </div>
                <div class="clear"></div>
        </div>
    </div>
</header>

<section class="formulaire">
    <h2>- Mes coordonnées de membre actif TeeGraph. -</h2>
    <div class="explications">
        <p>Vous êtes membre à part entière et nous vous en remercions!</p>
        <p>Si vous avez un changement dans votre vie et donc des modification d'enregistrement à apporter, n'hésitez pas, cliquez sur "Modifier".</p>
        <p><strong>N'oubliez pas d'enregistrer vos modifications à la fin!</strong></p>
    </div>

    <section class="forma center">
		<form:form method="post" action="${pageContext.request.contextPath}/auth/modify" modelAttribute="CocoBean">
            <div class="gauche">

                <form:errors path="nom" />
                <label for="nom">Nom:*</label> <br>
                <input disabled type="text" value="${userToModify.nom}" name="nom" id="nom" class="inputGeneral" />

                <form:errors path="dateNaissance" />
                <label for="dateNaissance">Date de naissance:*</label> <br>
                <input disabled type="date" value="${userToModify.dateNaissance}" name="dateNaissance" id="dateNaissance" class="inputGeneral" />

                <form:errors path="adresse" />
                <label for="adresse">Adresse:*</label> <br>
                <input disabled type="text" value="${userToModify.adresse}" name="adresse" id="adresse" class="inputGeneral" />

                <form:errors path="telephoneFixe" />
                <label for="telephoneFixe">Téléphone fixe:</label> <br>
                <input disabled type="text" value="${userToModify.telephoneFixe}" name="telephoneFixe" id="telephoneFixe" class="inputGeneral" />
                <br>
            </div>
            <div class="droit">
                <form:errors path="prenom" />
                <label for="prenom">Prénom:*</label> <br>
                <input disabled type="text" value="${userToModify.prenom}" name="prenom" id="prenom" class="inputGeneral" />

                <form:errors path="codePostale" />
                <label for=codePostale>Code Postale:*</label> <br>
                <input disabled type="text" value="${userToModify.codePostale}" name="codePostale" id="codePostale" class="inputGeneral" />

                <form:errors path="ville" />
                <label for="ville">Ville:*</label> <br>
                <input disabled type="text" value="${userToModify.ville}" name="ville" id="ville" class="inputGeneral" />
                <form:errors path="telephoneMobile" />
                <label for="telephoneMobile">Téléphone mobile:*</label> <br>
                <input disabled type="text" value="${userToModify.telephoneMobile}" name="telephoneMobile" id="mob" class="inputGeneral" />
            </div>
            <div class="clear"></div>

            <div class="centre">
                <form:errors path="email" />
                <label id="email" for="email">Email:*</label>
                <input type="email" readonly value="${userToModify.email}" name="email" id="email" />
            </div>

            <button id="declenche" type="text" value="Modifier">Modifier
            </button>
            <input type="submit" value="Enregistrer" />
            <br><br>
        </form:form>
        <div class="password">
            <form:form method="post" action="${pageContext.request.contextPath}/auth/modify" modelAttribute="CocoBean">

                <form:errors path="password" />
                <label for="password">Mot de passe actuel:*</label> <br>
                <input disabled type="password" name="password" class="inputPassword" id="passwordActuel" />
                <br>

                <form:errors path="passwordNew" />
                <label for="passwordNew">Modification Mot de passe:*</label> <br>
                <input disabled type="password" name="passwordNew" class="inputPassword" id="passwordNew" />
                <br>
                <form:errors path="passwordNewConf" />
                <label for="passwordNewConf">Confirmation Mot de passe:*</label> <br>
                <input disabled type="password" name="passwordNewConf" class="inputPassword" id="passwordNewConf" />
                <br>
                <button id="declenchePass" type="text" value="Modifier">Modifier
                </button>
                <input type="submit" value="Enregistrer" />
                <br>
            </form:form>
        </div>
    </section>
        
        <section class="imagerie">
            <img src="<c:url value="/resources/images/tee-membre.jpg" />" alt="">
        </section>
        <div class="clear"></div>

        <h2>- Historique de commande -</h2>
        <div class="explications">
            <p>Comme nous aimons nos membres chez TeeGraph., vous pouvez à tout moment rechoisir une des nos anciennes sérigraphies pour relancer la machine d'impression! <br>
                Alors n'hésitez plus, reselectionner la ligne de commande que vous souhaitez recommander en plus des nouveautés! </p>
        </div>
        
        <section class="historique">
            <form:form method="post" action="HistoriqueDesProduitAchetés">

            </form:form>
            <table>
                <tr>
                    <th class="graph">Modèle</th>
                    <th>Référence produit</th>
                    <th>Désignation</th>
                    <th class="qte">Quantité</th>
                    <th>Prix TTC</th>
                    <th><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></th>
                </tr>

                <tr>
                    <td><img src="images/graphiti-1.jpg" alt=""></td>
                    <td>XL-sw-rouge-Graph1020</td>
                    <td>Sweat rouge taille XL graph réf: 1020</td>
                    <td><input type="number" value="1" style="width: 50px; padding: 3px;"></td>
                    <td>100€</td>
                    <td><a href="panier.html">ajouter au panier</a></td>
                </tr>
                <tr>
                    <td><img src="images/graphiti-5.jpg" alt=""></td>
                    <td>XL-th-noir-Graph1045</td>
                    <td>Tee-shirt homme noir taille XL graph réf: 1020</td>
                    <td><input type="number" value="1" style="width: 50px; padding: 3px;"></td>
                    <td>25€</td>
                    <td><a href="panier.html">ajouter au panier</a></td>
                </tr>
                <tr>
                    <td><img src="images/graphiti-2.jpg" alt=""></td>
                    <td>L-pull-vert-Graph1220</td>
                    <td>Pull vert taille L graph réf: 1220</td>
                    <td><input type="number" value="1" style="width: 50px; padding: 3px;"></td>
                    <td>40€</td>
                    <td><a href="panier.html">ajouter au panier</a></td>
                </tr>
                <tr>
                    <td><img src="images/graphiti-3.jpg" alt=""></td>
                    <td>M-tf-rouge-Graph1065</td>
                    <td>Tee-Shirt femme rouge taille M graph réf: 1065</td>
                    <td><input type="number" value="1" style="width: 50px; padding: 3px;"></td>
                    <td>25€</td>
                    <td><a href="panier.html">ajouter au panier</a></td>
                </tr>
            </table>
            <div class="boutons">
                <a href="<c:url value="/mes-achats/panier"/>">Valider le panier</a>
                <a href="index.html">Poursuivre la commande</a>
            </div>

        </section>
        
    </section>
    <section class="color"></section>
	
    <footer>
        <div class="logo">
            <img src="<c:url value="/resources/images/logo-Tee-Graph-footer.png" />" alt="logo-TeeGraph">
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
       
            <div class="clear"></div>
        <div class="bottom">
            <a class="mention" href="#">MENTION LEGALES | RGPD</a>
            <p class="mention" href="">| Copyright TeeGraph.</p>
            <p class="mention">| ce site utilise des cookies</p>
        </div>
        
    </footer>
		
    <a id="scrolltop"><img src="resources/images/scroll-logo-v2.png" alt="TeeGraph-up"></a>

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


        $('#declenche').click(function(e) {
            /*let form = */
/*alert(e);*/
 
 			e.preventDefault();
            var nodes = document.getElementsByClassName("inputGeneral");
            for (var i = 0; i < nodes.length; i++) {
/*alert(nodes[i]);*/
                nodes[i].disabled = false;
            }

            return true;


        });
        
          $('#declenchePass').click(function(e) {
            /*let form = */
/*alert("test");*/
 			e.preventDefault();
            var nodes = document.getElementsByClassName("inputPassword");
            for (var i = 0; i < nodes.length; i++) {
/*alert(nodes[i]);*/
                nodes[i].disabled = false;
            }

            return true;


        });

    </script>
		
	
	
	
	

</body>
</html>