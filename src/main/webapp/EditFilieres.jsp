
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
        background-color: antiquewhite;
        font-weight: bold;
    }

    /* Navbar toggler icon styles */
    .navbar-toggler {
        border-color: white;
    }

    .navbar-toggler-icon {
        background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3e%3cpath stroke='rgba(255, 255, 255, 1)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
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

    table th, table td {
        font-weight: bold;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }

    table th {
        background-color: #f5f5f5;
        text-align: left;
        padding: 10px;
        border: 1px solid #ddd;
    }

    table td {
        padding: 10px;
        border: 1px solid #ddd;
    }
    .form-control {
        background-color: white;
    }

</style>
</head>
<body style="background-image: url(https://img.freepik.com/photos-gratuite/salle-classe-arriere-plan-flou-sans-jeune-etudiant-vue-floue-salle-classe-elementaire-aucun-enfant-enseignant-chaises-tables-campus-images-style-effet-vintage_1253-1375.jpg?w=1060&t=st=1674069595~exp=1674070195~hmac=0525a8223cad46b51e9e659d82ac88c775b189df309bf5fe62cb99fc7d093c29); background-size: cover;">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" cssClass="nav-link" href="/Struts2AnnotationLogin/">Aceuill</a>
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
      
              <h1 style="text-align: center">Update Filiere</h1>

      <s:form action="UpdateFiliere">
  <table class="table">
    <tbody>
      <s:textfield readonly="true" name="filiere.Code_Fil" style="background-color: white;" label="Code" cssClass="form-control" id="code"/>
      <s:textfield  name="filiere.Nom_Fil" style="background-color: white;" label="nom" cssClass="form-control" id="nom_fil"/>
   
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