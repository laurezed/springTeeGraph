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
<title>Tee Graph | panier d'achat</title>
<link rel="icon" type="image/png" sizes="16x16" href="<c:url value="/resources/images/favicon-tee-graph.png" />">
<meta name="description"
	content="Tee Graph, une semaine, 8 modèles, qui defilent au grès de nos experts graffeurs! Découvrez notre univers!">
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
							<li><a href="<c:url value="/" />">
							<spring:message code="menu.actif" /></a></li>
							
							<li><a id="actif" href="<c:url value="/qui-sommes-nous/atelier"/>">
							<spring:message code="menu.workshop" /></a></li>
							
							<li><a href="<c:url value="/on-echange/contact"/>"><spring:message
										code="menu.contact" /></a></li>
						</ul>
                </nav>
            </div>
            <div class="membre"> 
               <h1><em>Espace membre:</em></h1>
                    <p>Bienvenue <strong>${user.prenom}</strong></p>     
            </div>
            <div class="clear"></div>
        </div>
    </div>
</header>


<section class="formulaire">
    <h2>- Votre panier d'achat -</h2>
    <div class="explications">
         <p style="color: #3a2a32; font-size: 20px"><strong><em>Et non, ce n'est pas un panier de légumes bio, mais un panier rempli de couleur , d'expressions variées, alors régalez-vous!</em></strong></p>
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
                    <th>Prix unitaire TTC</th>
                    <th>Total/produit</th>
                </tr>

                <tr>
                    <td><img src="images/graphiti-1.jpg" alt=""></td>
                    <td>XL-sw-rouge-Graph1020</td>
                    <td>Sweat rouge taille XL graph réf: 1020</td>
                    <td><input type="number" value="1" style="width: 50px; padding: 3px;"></td>
                    <td>100€</td>
                    <td></td>
                </tr>
                <tr>
                    <td><img src="images/graphiti-5.jpg" alt=""></td>
                    <td>XL-th-noir-Graph1045</td>
                    <td>Tee-shirt homme noir taille XL graph réf: 1020</td>
                    <td><input type="number" value="1" style="width: 50px; padding: 3px;"></td>
                    <td>25€</td>
                </tr>
                <tr>
                    <td><img src="images/graphiti-2.jpg" alt=""></td>
                    <td>L-pull-vert-Graph1220</td>
                    <td>Pull vert taille L graph réf: 1220</td>
                    <td><input type="number" value="1" style="width: 50px; padding: 3px;"></td>
                    <td>40€</td>

                </tr>
                <tr>
                    <td><img src="images/graphiti-3.jpg" alt=""></td>
                    <td>M-tf-rouge-Graph1065</td>
                    <td>Tee-Shirt femme rouge taille M graph réf: 1065</td>
                    <td><input type="number" value="1" style="width: 50px; padding: 3px;"></td>
                    <td>25€</td>
                </tr>
                
            </table>
            <table>
                <tr>
                <th class="general">TOTAL de votre panier d'achat:</th>
                </tr>
                <tr></tr>
            </table>
            <div class="boutons">
                <a href="<c:url value="/mes-achat/panier" />">Finaliser la commande</a>
                <a href="index.html">Poursuivre la commande</a>
            </div>

        </section>
	
	
	<h2>- Coordonnées bancaire -</h2>
	<div class="explications">
       

        <form action="/charge" method="post" id="payment-form">

            <div class="form-row">
            <!--   <div class="col">
      <label for="name">
        Name
      </label>
      <input id="name" name="name" placeholder="Jenny Rosen" required>
    </div>-->
              <!-- <label for="card-element">
                  Name
                </label>
                <div id="card-element">
                   A Stripe Element will be inserted here. 
                </div>-->
                
                <label for="card-element">
                  Credit or debit card
                </label>
                <div id="card-element">
                  <!-- A Stripe Element will be inserted here. -->
                </div>

                <!-- Used to display form errors. -->
                <div id="card-errors" role="alert"></div>
           </div>

          <button>Submit Payment</button>
        </form>
	</div>
	
</section>

    <section class="color"></section>
    
    <footer>
        <div class="logo">
            <img src="images/logo-Tee-Graph-footer.png" alt="logo-TeeGraph">
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
                <form action="connection" method="post" modelAttribute="">
                    <label for="identify">Identifiez-vous</label>
                    <br>
                    <input type="text" name="utilisateur" placeholder="nom d'utilisateur">
                    <br>
                    <input type="password" name="password" placeholder="mot de passe">
                    <br>
                    <input type="submit" value="- GO -">
                    <br>
                    <a href="">Vous n'êtes pas encore membre!!!!<br>Cliquez ICI</a>
                </form> 
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
    </script>
    
     <script src="https://js.stripe.com/v3/"></script>
    <script>
        // Create a Stripe client.
        var stripe = Stripe('pk_test_TYooMQauvdEDq54NiTphI7jx');

        // Create an instance of Elements.
        var elements = stripe.elements();

        // Custom styling can be passed to options when creating an Element.
        // (Note that this demo uses a wider set of styles than the guide below.)
        var style = {
          base: {
            color: '#32325d',
            fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
            fontSmoothing: 'antialiased',
            fontSize: '16px',
            '::placeholder': {
              color: '#aab7c4'
            }
          },
          invalid: {
            color: '#fa755a',
            iconColor: '#fa755a'
          }
        };

        // Create an instance of the card Element.
        var card = elements.create('card', {style: style});

        //Add an instance of the card Element into the `card-element` <div>.-->
        card.mount('#card-element');
    </script>

</body>
</html>