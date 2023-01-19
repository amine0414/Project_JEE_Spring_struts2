<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: amine
  Date: 1/18/2023
  Time: 5:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 style="text-align: center">Update Filiere</h1>
<s:form action="updateFiliere" method="post">
    <s:textfield name="filiere.codeFil" value="%{filiere.codeFil}"/>
    <s:textfield name="filiere.nomFil" label="Nom" value="%{filiere.nomFil}"/>

    <s:submit value="Save" cssClass="btn btn-primary"/>
</s:form>
</body>
</html>
