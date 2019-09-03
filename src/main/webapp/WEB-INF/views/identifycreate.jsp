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
	<h1>Espace membre</h1>
	<h2>Vos coordonnées</h2>

	<section class="forma center">

		<form:form method="post" action="traitement.php">

			<label for="nom">Nom:</label>
			<input type="text" name="nom" id="nom" />

			<label for="prenom">Prenom:</label>
			<input type="text" name="prenom"" id="prenom" />
			
			<label for="birthday">Date de naissance:</label>
			<input type="text" name="birthday"" id="birthday" />
			
			<label for="adresse">Adresse:</label>
			<input type="text" name="adresse" id="adresse"  />
			
			<label for="bp">Code Postale:</label>
			<input type="text" name="bp" id="bp"  />
			
			<label for="ville">Ville:</label>
			<input type="text" name="ville" id="ville" />
			
			<label for="telfixe">Telephone fixe:</label>
			<input type="text" name="nom" id="fixe" />
			
			<label for="telmob">Téléphone mobile:</label>
			<input type="text" name="nom" id="mob" />

			<label for="email">Email:</label>
			<input type="email" name="email" id="email" />

			<label for="email">Verification de l'Email:</label>
			<input type="email" name="email2" id="email2" />	

			<input class="go-form" type="submit" value="Modifier" />
			
			<p>{msg}</p>
		</form:form>
	</section>
	
	

</body>
</html>