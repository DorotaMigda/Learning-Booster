
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>DODAJ OCENĘ </title>
</head>
<body>


<form:form method="post" modelAttribute="ocena">


<%--    <form:hidden path="id"/>--%>
<%--    <form:hidden path="link.id"/>--%>
    <h3> DODAJ OCENĘ </h3>


    <div>
        <label for="ocenaKoncowa">OCENA KOŃCOWA (1 najniższa, 3 najwyższa) </label>
        <form:input path="ocenaKoncowa" id="ocenaKoncowa" type="number" min="1" max="3"/>
        <form:errors path="ocenaKoncowa"/>
    </div>

    <div>
        <label for="ocenaNotatki">NOTATKI PO REALIZACJI</label>
        <form:input path="ocenaNotatki" id="ocenaNotatki" type="text"/>
        <form:errors path="ocenaNotatki"/>
    </div>

    <div>
        <input type="submit" value="Zapisz">
    </div>

</form:form>

<br>
<a href="/Home/"> Powrót na stronę główną </a>
<br>

<br>
<a href="/Home/links/all"> Wszystkie zadania </a>
<br>

<br> <a href ="/Home/realization/all">Zadania dodane do realizacji</a> <br>

</body>
</html>