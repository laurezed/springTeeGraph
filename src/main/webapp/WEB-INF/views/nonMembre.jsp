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
    <title>Tee Graph | inscription</title>
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
          <a href="index.html"><img src="<c:url value="/resources/images/logo-Tee-Graph.png" />" alt=""></a>
        </div>
        <div class="droit">
            <div class="menu">
                <nav class="menu">
                    <ul>
                        <li><a href="index.html">Accueil</a></li>
                        <li><a href="atelier.html" >Notre atelier</a></li>
                        <li><a href="contact.html" >Contact</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</header>

<section class="formulaire">
    <h2>- Formulaire d'inscription d'activation de compte TeeGraph. -</h2>
    <div class="explications">
        <p>Bienvenue sur le formulaire d'inscription pour  bientôt vous compter parmi nos membres actifs! 
        </p>
        <p>Pourquoi devenir membre TeeGraph? <br> Et bien vous aurez accès aux anciennes sérigraphies développées par nos équipes Graffeurs et vous pourrez les recommander à volonté!
        aussi nous vous aurez accès aux bonnes nouvelles et nouveautés via notre newsletter.</p>
        <p><strong>Enfin, nous vous offrons 10% de reduction sur vos achats! </strong></p>
    </div> 
<!-- 	<h2>Vos coordonnées</h2> -->
    <section class="forma nm center">
		<form:form method="post" action="${pageContext.request.contextPath}/auth/load" modelAttribute="cocoBean">
		<div class="gauche">

           <form:errors path="nom" />
            <label for="nom">Nom:*</label> <br>
            <input type="text" name="nom" id="nom"/>  
            
            <form:errors path="dateNaissance" />
            <label for="dateNaissance">Date de naissance:*</label> <br>
            <input type="date" name="dateNaissance" id="dateNaissance"/>
            
            <form:errors path="adresse" />
			<label for="adresse">Adresse:*</label> <br>
			<input type="text" name="adresse" id="adresse"  />
			
            <form:errors path="telephoneFixe" /> 
			<label for="telephoneFixe">Téléphone fixe:</label> <br>
			<input type="text" name="telephoneFixe" id="telephoneFixe" />
			<br>
       <form:errors path="email" />
			<label id="email" for="email">Email:*</label> 
			<input type="email" name="email" id="email" />
       <form:errors path="password" />
			<label for="passwordActuel">Mot de passe:*</label> <br>
			<input type="password" name="password" id="passwordActuel" /> 
			<br>
        </div>   
        <div class="droit">
            <form:errors path="prenom" />
            <label for="prenom">Prénom:*</label> <br>
            <input type="text" name="prenom" id="prenom" /> 

            <form:errors path="codePostale" />
            <label for=codePostale>Code Postale:*</label> <br>
            <input type="text" name="codePostale" id="codePostale"  />
            
            <form:errors path="ville" />
			<label for="ville">Ville:*</label> <br>    
			<input type="text" name="ville" id="ville" />
            <form:errors path="telephoneMobile" /> 
			<label for="telephoneMobile">Téléphone mobile:*</label> <br>
			<input type="text" name="telephoneMobile" id="telephoneMobile" />
            <form:errors path="emailConf" />
			<label id="emailConf" for="email2">Confirmation Email:*</label> 
			<input type="email" name="email2" id="email2" />
            <form:errors path="passwordConf" />
			<label for="passwordNewConf">Confirmation Mot de passe:*</label> <br>
			<input type="password" name="password" id="passwordNewConf" /> 
			<br>
			<input type="submit" value="Enregistrer" />
			<br>
        </div>
        <div class="clear"></div>
		
			
		</form:form>
		
	</section>
			
	
	<section id="nm" class="imagerie">
        <img id="connect" src="<c:url value="/resources/images/logo-connecte.png" />"
         alt="">
    </section>
	 <div class="clear"></div>
	
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