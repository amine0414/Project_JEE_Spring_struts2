<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <title>Gestion des Étudiants</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    <style>
        /* Add some custom styles for the page */
        body {
            background-image: url(https://pixabay.com/link/?ua=cd3%3Dimage%26cd7%3Dfr%253Aschool%253AMAR%26ec%3Dapi_ad%26ea%3Dnavigate%26el%3Dgetty%26tid%3DUA-20223345-1%26dr%3Dhttps%253A%252F%252Fpixabay.com%252Ffr%252F&next=https%3A%2F%2Fwww.istockphoto.com%2Fphoto%2Flittle-kids-schoolchildren-pupils-students-running-hurrying-to-the-school-building-gm1338737959-419234940%3Futm_source%3Dpixabay%26utm_medium%3Daffiliate%26utm_campaign%3DSRP_image_sponsored%26utm_content%3Dhttps%253A%252F%252Fpixabay.com%252Ffr%252Fimages%252Fsearch%252Fschool%252F%26utm_term%3Dschool&hash=f7d2af60c850517a03dcf87f8e011cf3fe36ac0e&=); /* Add background image */
            background-size: cover; /* Set background size */
        }
        /* Add some custom styles for the container */
        .container {
            padding: 50px; /* Add some padding to the container */
            text-align: center; /* Center the content inside the container */
        }
        /* Add some custom styles for the heading */
        h1 {
            color: white; /* Set the text color to white */
            text-shadow: 2px 2px 4px #333; /* Add a text shadow */
        }
        /* Add some custom styles for the buttons */
        .btn {
            margin: 10px; /* Add some margin to the buttons */
            padding: 10px; /* Add some padding to the buttons */
            text-align: center; /* Center the text inside the buttons */
            text-decoration: none; /* Remove the underline from the buttons */
            transition: all 0.2s ease-in-out; /* Add a transition effect */
        }
        /* Add hover effect to the buttons */
        .btn:hover {
            background-color: #f5f5f5; /* Change the background color on hover */
            color: #333; /* Change the text color on hover */
            transform: scale(1.1); /* Scale the button up on hover */
        }
        /* Add some custom styles for the icons */
        .btn i {
            font-size: 24px; /* Increase the size of the icon */
            margin-right: 10px; /* Add some margin to the right of the icon */
        }

        ul {
            list-style-type: none;
            text-decoration: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover {
            background-color: #b5d9f5;
        }
    </style>
</head>
<body>
<ul>
    <li><a href="all" class="btn btn-primary"> <span class="glyphicon glyphicon-th-list"></span> Liste des Étudiants</a></li>
    <li><a href="addAction" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span>Ajouter un Étudiant</a></li>
    <li><a href="home.jsp" class="btn btn-secondary">  <span class="glyphicon glyphicon-home"></span>Accueil</a></li>
    <li style="float:right"><a class="active" href="#about">About</a></li>
</ul>
<div class="container">
    <h1>Gestion des Étudiants</h1>
    <a href="all" class="btn btn-primary">
        <i class="fas fa-list"></i>
        Liste des Étudiants
    </a>
    <a href="addAction" class="btn btn-success">
        <i class="fas fa-plus"></i>
        Ajouter un Étudiant
    </a>
    <a href="home.jsp" class="btn btn-danger">
        <i class="fas fa-home"></i>
        Retour à l'Accueil
    </a>
</div>

</body>
</html>
