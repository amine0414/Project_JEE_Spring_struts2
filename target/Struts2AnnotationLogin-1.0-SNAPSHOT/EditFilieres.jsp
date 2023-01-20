<%-- 
    Document   : Filieres
    Created on : 15 Jan 2023, 12:19:52
    Author     : Ali Bouhcain
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
  <title>CRUD Eleve</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
   <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/Struts2AnnotationLogin/">HOME</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
          <s:url id="listeleves" action="ListEleves"></s:url> 
        <li class="nav-item">
          <s:a href="%{listeleves}" cssClass="nav-link">ELEVES</s:a>
        </li>
         <s:url id="listefilieres" action="ListFilieres"></s:url> 

        <li class="nav-item">
          <s:a href="%{listefilieres}" cssClass="nav-link">Filieres</s:a>
        </li>
      </ul>
    </div>
  </nav>
        <div class="container">
      
              <h1>Update Filiere</h1>

      <s:form action="UpdateFiliere">
  <table class="table">
    <tbody>
      <s:textfield name="filiere.Code_Fil" label="Code" cssClass="form-control" id="code"/>
      <s:textfield name="filiere.Nom_Fil" label="nom" cssClass="form-control" id="nom_fil"/>
   
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
</html>