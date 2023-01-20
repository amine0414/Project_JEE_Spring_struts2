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
      
              <h1>Ajouter Filiere</h1>

      <s:form action="AjouterFiliere">
  <table class="table">
    <tbody>
      <s:textfield name="filiere.Code_Fil" label="Code" cssClass="form-control" id="code"/>
      <s:textfield name="filiere.Nom_Fil" label="nom" cssClass="form-control" id="nom_fil"/>
   
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
    <table class="table">
      <thead class="thead-light">
        <tr>
          <th>Code Filiere</th>
          <th>Nom Filiere</th>
          <th>Nombre des etudiants</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
     
        <s:iterator value="lesfilieres">
    <tr>
        <td><s:property value="Code_Fil"/></td>  
        <td><s:property value="Nom_Fil"/></td>
        <td><s:property value="elevesCollection.size()"/></td>
        <td>
            
            <s:url id="edtFil" action="EditerFiliere">
            <s:param name="Code_Fil" value="%{Code_Fil}"></s:param>
            </s:url> 
            <s:a href="%{edtFil}" cssClass="btn btn-warning btn-sm" >Edit</s:a>
      
            <s:url id="suppFil" action="SupprimerFiliere">
            <s:param name="Code_Fil" value="%{Code_Fil}"></s:param>
            </s:url> 
            <s:a href="%{suppFil}" 
            onclick="if (!(confirm('Etes vous sur de vouloir supprimer cette filiere ?'))) return false" cssClass="btn btn-danger btn-sm" >Delete</s:a>
            
            <s:url id="FilElvs" action="EleveDeFil">
            <s:param name="Code_Fil" value="%{Code_Fil}"></s:param>
            </s:url> 
            <s:a href="%{FilElvs}" cssClass="btn btn-primary btn-sm" >Liste des eleves</s:a>
            
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