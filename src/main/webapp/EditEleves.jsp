

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
  <title>CRUD Eleve</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<style>
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
    /* Form container styles */
    .form-container {
        width: 50%;
        margin: 0 auto;
        padding: 20px;
        background-color: #f9f9f9;
        border-radius: 10px;
        box-shadow: 0px 0px 15px 0px #ccc;
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
        box-shadow: inset 0px 0px 5px 0px #ddd;
    }
    /* Submit button styles */
    .btn-primary {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: all 0.3s;
    }
    /* Submit button hover effect */
    .btn-primary:hover {
        background-color: #3e8e41;
    }
    /* Select input styles */
    .form-control[name='eleve.ref_fil.Code_Fil'] {
        height: 40px;
        padding: 6px 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
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
    <a class="navbar-brand" href="/Struts2AnnotationLogin/">Acceuil</a>
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
      
              <h1 style="text-align: center">Update Eleve</h1>

      <s:form action="UpdateEleve">
  <table class="table">
    <tbody>
      <s:textfield name="eleve.cne" label="CNE" cssClass="form-control" id="cne"/>
      <s:textfield name="eleve.nom" label="Nom" cssClass="form-control" id="nom"/>
      <s:textfield name="eleve.prenom" label="Prénom" cssClass="form-control" id="prenom"/>
      <s:textfield name="eleve.moyenne" label="Moyenne" cssClass="form-control" id="moyenne"/>
      <tr>    
      <td>
            <s:select label="Filiere"
             name="eleve.ref_fil.Code_Fil"
             headerKey="1"
             headerValue="-filiere-"
             list="ListeDesFilieres"
             />
        </td>  
     </tr> 
      <tr>
        <td colspan="2">
          <s:submit value="Update" cssClass="btn btn-primary"/>
        </td>
      </tr>
    </tbody>
  </table>
</s:form>


        



    <br>
    <br>
   
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