
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>DODAJ DO OCENY </title>
</head>
<body>

<c:out value="${rating.link.link}"/>



<form:form method="post" modelAttribute="ocena">

    <h3> DODAJ DO OCENY </h3>


    <div>
        <label for="ocenaKoncowa">OCENA KOŃCOWA (1 najniższa, 3 najwyższa) </label>
        <form:input path="ocenaKoncowa" id="ocenaKoncowa" type="text"/>
        <form:errors path="ocenaKoncowa"/>
    </div>

    <div>
        <label for="ocenaNotatki">NOTATKI PO REALIZACJI</label>
        <form:input path="ocenaNotatki" id="ocenaNotatki" type="text"/>
        <form:errors path="ocenaNotatki"/>
    </div>

    <div>
        <input type="submit">
    </div>

</form:form>

<br>
<a href="/Home/"> Powrót na stronę główną </a>
<br>

<br>
<a href="/Home/links/all"> Powrót na stronę wszystkich linków </a>
<br>

<br> <a href ="/Home/realization/all">Linki dodane do realizacji</a> <br>

</body>
</html>