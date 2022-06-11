<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>DODAJ LINK</title>
</head>
<body>
<form:form method="post" modelAttribute="link">

    <h3> DODAJ LINK </h3>
    <br>
    <div>
        <label for="nazwa">NAZWA</label>
        <form:input path="nazwa" id="nazwa" type="text"/>
        <form:errors path="nazwa"/>
    </div>
    <div>
        <label for="link">LINK</label>
        <form:input path="link" id="link" type="text"/>
        <form:errors path="link"/>
    </div>
    <div>
        <label for="kosztPLN">KOSZT W PLN</label>
        <form:input path="kosztPLN" id="kosztPLN" type="text"/>
        <form:errors path="kosztPLN"/>
    </div>
    <div>
        <label for="czasNauki">CZAS NAUKI (podaj szacunkowy czas w godzinach)</label>
        <form:input path="czasNauki" id="czasNauki" type="text"/>
        <form:errors path="czasNauki"/>
    </div>
    <div>

        <label for="deadline">DEADLINE NA DECYZJĘ</label>
        <form:input path="deadline" id="deadline" type="date"/>
        <form:errors path="deadline"/>
    </div>

    <div>
        <label for="wstepnaOcena">WSTĘPNA OCENA (1 najniższa, 2 średnia, 3 najwyższa)</label>
<%--        <form:input path="wstepnaOcena" id="wstepnaOcena" type="text"/>--%>
        <form:select path="wstepnaOcena">
            <form:option value="-" label="Wybierz"/>
            <form:option value="1" label="1"/>
            <form:option value="2" label="2"/>
            <form:option value="3" label="3"/>
        </form:select>
        <form:errors path="wstepnaOcena"/>

    </div>

    <div>
        <label for="rodzaj">RODZAJ (książka, film, kurs stacjonarny)</label>
<%--        <form:input path="rodzaj" id="rodzaj" type="text"/>--%>

        <form:select path="rodzaj">
            <form:option value="-" label="Wybierz"/>
            <form:option value="Książka" label="Książka"/>
            <form:option value="Film" label="Film"/>
            <form:option value="Kurs stacjonarny" label="Kurs stacjonarny"/>
        </form:select>

        <form:errors path="rodzaj"/>
    </div>
    <div>
        <label for="notatki">NOTATKI</label>
        <form:input path="notatki" id="notatki" type="text"/>
        <form:errors path="notatki"/>
    </div>

    <div>
        <input type="submit">
    </div>
<%--    <form:errors path="*"/>--%>
</form:form>
<br>
<a href="/Home/"> Powrót na stronę główną </a>
<br>

<br>
<a href="/Home/links/all"> Powrót na stronę wszystkich linków </a>
<br>

</body>
</html>