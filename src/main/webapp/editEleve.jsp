<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
  <title>Update Eleve</title>
  <!-- Add some styling for the page -->
  <style>
    /* Add some custom styles for the form */
    form {
      margin: 30px auto;
      width: 50%;
      padding: 30px;
      border: 1px solid #ccc;
      border-radius: 10px;
      background-color: #f5f5f5;
    }
    /* Add some custom styles for the input fields */
    input[type="text"], input[type="number"] {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      box-sizing: border-box;
      border: 1px solid #ccc;
      border-radius: 4px;
      background-color: #f8f8f8;
      font-size: 16px;
    }
    /* Add some custom styles for the submit button */
    input[type="submit"] {
      width: 100%;
      background-color: #4CAF50;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
    }
    /* Add some hover effect to the submit button */
    input[type="submit"]:hover {
      background-color: #45a049;
    }
    /* Add some custom styles for the footer */
    footer {
      background-color: #333; /* Set the background color of the footer */
      color: #fff; /* Set the text color of the footer */
      padding: 20px; /* Add some padding to the footer */
    }
    /* Add some custom styles for the copyright text */
    .copyright {
      font-size: 16px; /* Increase the font size of the copyright text */
    }
    h1{
      text-align: center;
    }
    select {
      padding: 10px;
      font-size: 16px;
      border-radius: 5px;
      border: none;
      box-shadow: 0 0 10px gray;
    }h1{
      text-align: center;
         }
  </style>
</head>
<body>
<a href="student.jsp" class="btn btn-info">Retour</a>
<h1>Update Eleve</h1>
<s:form action="updateEleve" method="post">
  <label for="code">code Eleve</label>
  <input type="text" id="code" readonly name="eleve.cne" value="${eleve.cne}"/>
  <label for="nom">Nom </label>
  <input type="text" id="nom" name="eleve.nom" label="Nom" value="${eleve.nom}"/>
  <label for="pre">Prenom </label>
  <input type="text" id="pre" name="eleve.prenom" label="Prenom" value="${eleve.prenom}"/>
  <label for="moy">Moyenne </label>
  <input type="text" id="moy" name="eleve.moyenne" label="Moyenne" value="${eleve.moyenne}"/>
  <label for="fil">Filiere </label>
  <select label="FIliere" id="fil" name="eleve.filiere.codeFil" >
    <s:iterator value="filieres">
      <c:if test="${eleve.filiere.codeFil.equals(codeFil)}">
        <option selected name="${codeFil}" >${codeFil}</option>
      </c:if>
      <c:if test="${!eleve.filiere.codeFil.equals(codeFil)}">
        <option  name="${codeFil}" >${codeFil}</option>
      </c:if>

    </s:iterator>
  </select>
  <s:submit value="Save" cssClass="btn btn-primary"/>
</s:form>
</body>

</html>