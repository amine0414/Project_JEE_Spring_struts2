
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
  <title>CRUD Eleve</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <style>
        /* Form container styles */
        .form-container {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            background-color: #f7f7f7;
            border-radius: 10px;
        }

        /* Table styles */
        .table {
            width: 100%;
            margin-bottom: 20px;
            border-collapse: separate;
            border-spacing: 0;
        }

        /* Table cell styles */
        .table td {
            padding: 10px;
            vertical-align: middle;
            border-top: 1px solid #ddd;
        }

        /* Form control styles */
        .form-control {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        /* Submit button styles */
        .btn-primary {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .footer {
            background-color: #343a40;
            color: white;
            padding: 20px;
            text-align: center;
            position: absolute;
            bottom: 0;
            width: 100%;
        }
        .container {
            position: relative;
        }
        /* Footer link styles */
        .footer a {
            color: white;
            text-decoration: none;
            transition: all 0.3s;
        }

        /* Footer link hover effect */
        .footer a:hover {
            color: #007bff;
        }
    </style>
</head>
<body style="background-image: url(https://img.freepik.com/photos-gratuite/salle-classe-arriere-plan-flou-sans-jeune-etudiant-vue-floue-salle-classe-elementaire-aucun-enfant-enseignant-chaises-tables-campus-images-style-effet-vintage_1253-1375.jpg?w=1060&t=st=1674069595~exp=1674070195~hmac=0525a8223cad46b51e9e659d82ac88c775b189df309bf5fe62cb99fc7d093c29); background-size: cover;">
   <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/Struts2AnnotationLogin/">Aceuill</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
          <s:url id="listeleves" action="ListEleves"></s:url> 
        <li class="nav-item">
          <s:a href="%{listeleves}" cssClass="nav-link">Gestion Eleves</s:a>
        </li>
         <s:url id="listefilieres" action="ListFilieres"></s:url> 

        <li class="nav-item">
          <s:a href="%{listefilieres}" cssClass="nav-link">Gestion Filieres</s:a>
        </li>
      </ul>
    </div>
  </nav>
        <div class="container">
      
              <h1>Ajouter Filiere</h1>

            <s:form action="AjouterFiliere" class="form-container">
            <table class="table">
                <tbody>
                <tr>
                    <td>
                        <s:textfield name="filiere.Code_Fil" label="Code" cssClass="form-control" id="code"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <s:textfield name="filiere.Nom_Fil" label="nom" cssClass="form-control" id="nom_fil"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <s:submit value="Ajouter" cssClass="btn btn-primary"/>
                    </td>
                </tr>
                </tbody>
            </table>
            </s:form>


            <br>
    <br>

  </body>

</html>