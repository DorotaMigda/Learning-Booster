
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title> OCENIONE </title>
</head>
<body>
<h3> LINKI OCENIONE</h3>
<br>
<br>
<table border="1">
    <thead>
    <th>LINK ID </th>
    <th>Link NAZWA </th>
    <th>LINK </th>
    <th>OCENA ID </th>
    <th>OCENA KOŃCOWA<br>(1 najniższa, 3 najwyższa)</th>
    <th>NOTATKI PO REALIZACJI</th>
    <th>USUŃ Z OCENIONYCH</th>
    <th>EDYTUJ OCENĘ</th>

    </thead>
    <tbody>
    <c:forEach items="${ocena}" var="ocena">
        <tr>
            <td><c:out value="${ocena.link.id}"/></td>
            <td><c:out value="${ocena.link.nazwa}"/></td>
            <td><c:out value="${ocena.link.link}"/></td>
            <td><c:out value="${ocena.id}"/></td>
            <td><c:out value="${ocena.ocenaKoncowa}"/></td>
            <td><c:out value="${ocena.ocenaNotatki}"/></td>
            <td><a href="/Home/rating/delete/${ocena.id}">Usuń </a></td>
            <td><a href="/Home/rating/edit/${ocena.id}">Edytuj </a></td>


        </tr>
    </c:forEach>
    </tbody>
</table>
<br>
<a href="/Home/"> Powrót na stronę główną </a>
<br>
<br>
<a href="/Home/links/all"> Wszystkie linki </a>
</body>
</html>