<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: amine
  Date: 1/18/2023
  Time: 4:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        /* Add some custom styles for the form */
        form {
            width: 30%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f5f5f5;
        }
        /* Add some custom styles for the form fields */
        form label, form input {
            display: block;
            width: 100%;
            margin-bottom: 10px;
        }
        form label {
            font-weight: bold;
        }
        form input[type="text"], form input[type="number"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        /* Add some custom styles for the submit button */
        form input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        /* Add hover effect to the submit button */
        form input[type="submit"]:hover {
            background-color: #3e8e41;
        }
    </style>
</head>
<body>
<a href="filieres.jsp" class="btn btn-info">Retour</a>
<h1 style="text-align: center;">Enter Filiere Information</h1>
<form action="saveFiliere" method="post">
    <label for="code">code filiere:</label>
    <input type="text" id="code" name="filiere.codeFil" required>
    <label for="nom">Nom filiere:</label>
    <input type="text" id="nom" name="filiere.nomFil" required>
    <input type="submit" value="Save">

</form>
</body>
</html>
