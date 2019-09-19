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
<title>identify</title>
<link href="css/styles.css" rel="stylesheet" type="text/css"
	media="screen">
<link href="css/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="https://fonts.googleapis.com/css?family=Oswald:300,400,700"
	rel="stylesheet">
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

	<header> </header>
	<h1>Formulaire Inscription</h1>
	
	<h2>Vos coordonnées</h2>
	<section class="forma center">
		<form:form method="post" action="${pageContext.request.contextPath}/auth/load" modelAttribute="cocoBean">

			<form:errors path="nom" />
			<label for="nom">Nom:</label>
			<input type="text" name="nom" id="nom" />

			<form:errors path="prenom" />
			<label for="prenom">Prénom:</label>
			<input type="text" name="prenom" id="prenom" />
			
			<form:errors path="dateNaissance" />
			<label for="dateNaissance">Date de naissance:</label>
			<input type="date" name="dateNaissance" id="dateNaissance" />
			
			<form:errors path="v" />
			<label for="adresse">Adresse:</label>
			<input type="text" name="adresse" id="adresse"  />
			
			<form:errors path="codePostale" />
			<label for="codePostale">Code Postale:</label>
			<input type="text" name="codePostale" id="codePostale"  />
			
			<form:errors path="ville" />
			<label for="ville">Ville:</label>
			<input type="text" name="ville" id="ville" />
			
			<form:errors path="telephoneFixe" />
			<label for="telephoneFixe">Telephone fixe:</label>
			<input type="text" name="telephoneFixe" id="fixe" />
			
			<form:errors path="telephoneMobile" />
			<label for="telephoneMobile">Téléphone mobile:</label>
			<input type="text" name="telephoneMobile" id="mob" />

			<form:errors path="email" />
			<label for="email">Email:</label>
			<input type="email" name="email" id="email" />
			
			<form:errors path="email2" />
			<label for="email2">Confirmation de l'email:</label>
			<input type="email" name="email2" id="email2" />
			
			<form:errors path="password" />
			<label for="password">Password:</label>
			<input type="password" name="password" id="password" />
			
			<form:errors path="password2" />
			<label for="password2">Confirmation du mot de passe:</label>
			<input type="password" name="password2" id="password2" />

			<input class="go-form" type="submit" value="Enregistrer" />
			
			<p>${msg}</p>
			
		</form:form>
		
	</section>

</body>
</html>