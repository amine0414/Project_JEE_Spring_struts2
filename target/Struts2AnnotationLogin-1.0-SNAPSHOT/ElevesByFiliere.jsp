<%-- 
    Document   : Eleves
    Created on : 13 Jan 2023, 21:04:10
    Author     : Ali Bouhcain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
  <title>Gestion des Etudiant</title>
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
          <s:a href="%{listefilieres}" cssClass="nav-link">FILIERES</s:a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="container">
      
              <h1>Eleves de filiere <s:property value="filiere.Code_Fil"/></h1>

    <br>
    <br>
    <table class="table">
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
            onclick="if (!(confirm('Etes vous sur de vouloir d'editer cet eleve ?'))) return false" cssClass="btn btn-warning btn-sm" >S'Inscrire</s:a>

            <s:url id="supprElv" action="SupprimerEleve">
            <s:param name="cne" value="%{cne}"></s:param>
            </s:url> 
            <s:a href="%{supprElv}" 
            onclick="if (!(confirm('Etes vous sur de vouloir supprimer cet eleve ?'))) return false" cssClass="btn btn-danger btn-sm" >Delete</s:a>
        </td>
    </tr>
    </s:iterator>

    </tbody>
  </table>

</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaI"></script>
</body>
</html>