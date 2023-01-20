

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
  <title>Gestion des Etudiant</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
   <style>
    table {
    margin: 30px auto; /* Center the table on the page */
    width: 90%; /* Set the table width */
    }
    /* Add some custom styles for the table head */
    th {
    font-size: 18px; /* Increase the font size of the table head */
    }
    /* Add some custom styles for the table body */
    td {
    font-size: 16px; /* Increase the font size of the table body */
    }
    /* Add some custom styles for the action links */
    .btn {
    margin: 5px; /* Add some margin to the action links */
    }
    /* Center the table header text */
    th {
    text-align: center;
    }
    /* Add some padding and border to the table cells */
    td, th {
    padding: 10px;
    border: 1px solid #ddd;
    }
    /* Add hover effect to the table rows */
    tr:hover {
    background-color: #f5f5f5;
    }
    /* Add some custom font styles for the table */
    h1, th, td {
    font-family: 'Open Sans', sans-serif;
    }
    form {
    width: 50%;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #f5f5f5;
    }
    a{
    text-align: right;
    float: right;
    }
    h1{
    text-align: center;
    }


         /* Navbar container styles */
    .navbar {
        background-color: #343a40;
    }

    /* Navbar brand styles */
    .navbar-brand {
        color: white;
        font-size: 22px;
        font-weight: bold;
    }

    /* Navbar link styles */
    .nav-link {
        color: white;
        font-size: 18px;
        padding: 20px;
        text-decoration: none;
        transition: all 0.3s;
    }

    /* Navbar link hover effect */
    .nav-link:hover {
        background-color: #222;
    }

    /* Navbar toggler icon styles */
    .navbar-toggler {
        border-color: white;
    }

    .navbar-toggler-icon {
        background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3e%3cpath stroke='rgba(255, 255, 255, 1)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
    }

    /* Footer container styles */
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
    <a class="navbar-brand" href="/Struts2AnnotationLogin/">Acceuil</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
          <s:url id="listeleves" action="ListEleves"></s:url> 
        <li class="nav-item">
          <s:a href="ListEleves" class="" cssClass="nav-link">Gestion Eleve</s:a>
        </li>
         <s:url id="listefilieres" action="ListFilieres"></s:url> 

        <li class="nav-item">
          <s:a href="ListFilieres" cssClass="nav-link">Gestion Filiere</s:a>
        </li>
      </ul>
    </div>
  </nav>
  <h1 style="text-align: center">Eleves Non Inscrit</h1>
  <div class="container">
      

    <br>
    <br>
    <table lass="table table-hover">
      <thead class="thead-light">
        <tr>
          <th>CNE</th>
          <th>Nom</th>
          <th>Prenom</th>
          <th>Moyenne</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
     
        <s:iterator value="eleves">
    <tr>
        <td><s:property value="cne"/></td>  
        <td><s:property value="nom"/></td>
        <td><s:property value="prenom"/></td>
        <td><s:property value="moyenne"/></td>

        <td>
            <s:url id="edtElv" action="EditerEleve">
            <s:param name="cne" value="%{cne}"></s:param>
            </s:url> 
            <s:a href="%{edtElv}" 
            onclick="if (!(confirm('Etes vous sur de vouloir d'editer cet eleve ?'))) return false" cssClass="btn btn-primary btn-sm" >Affecter</s:a>
        
            <s:url id="supprElv" action="SupprimerEleve">
            <s:param name="cne" value="%{cne}"></s:param>
            </s:url> 
            <s:a href="%{supprElv}" 
            onclick="if (!(confirm('Etes vous sur de vouloir supprimer cet eleve ?'))) return false" cssClass="btn btn-danger btn-sm" >Supprimer</s:a>
        </td>
    </tr>
    </s:iterator>

    </tbody>
  </table>

</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaI"></script>
</body>
<footer class="footer">
    <div class="container">
        <p>Copyright &copy; 2021</p>
        <ul class="list-inline">
            <li class="list-inline-item">
                <a href="#">Privacy Policy</a>
            </li>
            <li class="list-inline-item">
                <a href="#">Terms of Use</a>
            </li>
            <li class="list-inline-item">
                <a href="#">Contact Us</a>
            </li>
        </ul>
    </div>
</footer>

</html>