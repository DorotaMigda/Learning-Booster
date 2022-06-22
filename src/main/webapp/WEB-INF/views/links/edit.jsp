<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>

    <title>EDYCJA ZADAŃ </title>

</head>

<body>

<c:url var="edit_url" value="/links/edit"/>

<h3> EDYTUJ ZADANIE </h3>
<br>
<br>

<form:form method="post" modelAttribute="link" action="${edit_url}">


    <form:hidden path="id"/>

    <label for="nazwa">NAZWA</label>
    <form:input path="nazwa"/>
    <form:errors path="nazwa"/><br/>

    <label for="link">LINK</label>
    <form:input path="link"/>
    <form:errors path="link"/><br/>

    <label for="kosztPLN">KOSZT W PLN</label>
    <form:input path="kosztPLN" type="number" min="0" step=".01"/>
    <form:errors path="kosztPLN"/><br/>

    <label for="czasNauki">CZAS NAUKI (podaj szacunkowy czas w godzinach)</label>
    <form:input path="czasNauki" type="number" min="0" step=".01"/>
    <form:errors path="czasNauki"/><br/>

    <label for="deadline">DEADLINE NA DECYZJĘ</label>
    <form:input path="deadline" id="deadline" type="date"/>
    <form:errors path="deadline"/><br/>

    <label for="wstepnaOcena">WSTĘPNA OCENA (1 najniższa, 2 średnia, 3 najwyższa)</label>
    <form:input path="wstepnaOcena" type="number" min="1" max="3"/>
    <form:errors path="wstepnaOcena"/><br/>

    <label for="rodzaj">RODZAJ (książka, film, kurs stacjonarny)</label>


    <form:select path="rodzaj">
        <form:option value="-" label="Wybierz"/>
        <form:option value="Książka" label="Książka"/>
        <form:option value="Film" label="Film"/>
        <form:option value="Kurs stacjonarny" label="Kurs stacjonarny"/>
        <form:option value="Kurs online" label="Kurs online"/>
    </form:select>

    <form:errors path="rodzaj"/><br/>

    <label for="notatki">NOTATKI</label>
    <form:input path="notatki"/>
    <form:errors path="notatki"/><br/>

    <input type="submit" value="Zapisz">

</form:form>

<br>
<a href="/Home/"> Powrót na stronę główną </a>
<br>

<br> <a href =/Home/links/all\> Wszystkie zadania </a>
</body>

</html>