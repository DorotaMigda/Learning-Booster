<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form"

           uri="http://www.springframework.org/tags/form" %>


<html>

<head>

    <title>EDYCJA REALIZACJI </title>

</head>

<body>

<c:url var="edit_url" value="/realization/edit"/>

<h3> EDYTUJ LINK </h3>
<br>
<br>


<form:form method="post" modelAttribute="realizacja" action="${edit_url}">


    <form:hidden path="id"/>

    <form:hidden path="link.id"/>


    <label for="planowaneTerminy">PLANOWANE TERMINY</label>
    <form:input path="planowaneTerminy"/>
    <form:errors path="planowaneTerminy"/><br/>

    <label for="naukaNotatki">NAUKA NOTATKI</label>
    <form:input path="naukaNotatki"/>
    <form:errors path="naukaNotatki"/><br/>


    <input type="submit" value="Zapisz">

</form:form>

<br>
<a href="/Home/"> Powrót na stronę główną </a>
<br>

<br> <a href =/Home/links/all\> Powrót na stronę wszystkich linków </a>

<br>

<br> <a href =/Home/realization/all> Powrót na stronę linków dodanych do realizacji </a>
</body>

</html>