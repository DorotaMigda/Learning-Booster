<%--
  Created by IntelliJ IDEA.
  User: dorota
  Date: 09.06.2022
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>DODAJ DO REALIZACJI </title>
</head>
<body>
<c:out value="${realization.link.link}"/>


<form:form method="post" modelAttribute="realizacja">

    <h3> DODAJ DO REALIZACJI </h3>


    <div>
        <label for="planowaneTerminy">PLANOWANE TERMINY</label>
        <form:input path="planowaneTerminy" id="planowaneTerminy" type="text"/>
        <form:errors path="planowaneTerminy"/>
    </div>

    <div>
        <label for="naukaNotatki">NOTATKI W CZASIE NAUKI</label>
        <form:input path="naukaNotatki" id="naukaNotatki" type="text"/>
        <form:errors path="naukaNotatki"/>
    </div>

    <div>
        <input type="submit" value="Dodaj do realizacji">
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


