<%--
  Created by IntelliJ IDEA.
  User: dorota
  Date: 09.06.2022
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title> DODANE DO REALIZACJI </title>
</head>
<body>
<h3> LINKI DODANE DO REALIZACJI </h3>
<br>
<br>
<table border="1">
    <thead>
    <th>LINK ID </th>
    <th>NAZWA</th>
    <th>LINK</th>
    <th>KOSZT </th>
    <th>SZACOWANY CZAS NAUKI <br>(W GODZINACH) <br> </th>
    <th>REALIZACJA ID</th>
    <th>PLANOWANE TERMINY</th>
    <th>NOTATKI W CZASIE NAUKI</th>
    <th>USUŃ LINK Z REALIZACJI</th>
    <th>EDYTUJ REALIZACJĘ</th>

    </thead>
    <tbody>
    <c:forEach items="${realization}" var="realization">
        <tr>
            <td><c:out value="${realization.link.id}"/></td>
            <td><c:out value="${realization.link.nazwa}"/></td>
            <td><c:out value="${realization.link.link}"/></td>
            <td><c:out value="${realization.link.kosztPLN}"/></td>
            <td><c:out value="${realization.link.czasNauki}"/></td>
            <td><c:out value="${realization.id}"/></td>
            <td><c:out value="${realization.planowaneTerminy}"/></td>
            <td><c:out value="${realization.naukaNotatki}"/></td>
            <td><a href="/Home/realization/delete/${realization.id}">Usuń </a></td>
            <td><a href="/Home/realization/edit/${realization.id}">Edytuj </a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>
<a href="/Home/"> Powrót na stronę główną </a>
<br>
<br>
<a href="/Home/links/all"> Wszystkie linki </a><br>
<br> <a href="/Home/rating/all"> Linki dodane do oceny </a> <br>
</body>
</html>