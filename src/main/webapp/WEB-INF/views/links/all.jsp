<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>WSZYSTKIE LINKI </title>
</head>
<body>
<h3> WSZYSTKIE LINKI </h3>
<br>
<br>
<table border="1">
    <thead>
    <th>ID</th>
    <th>NAZWA</th>
    <th>LINK</th>
    <th>KOSZT <br> W PLN</th>
    <th>SZACUNKOWY <br> CZAS NAUKI <br>(w godzinach)</th>
    <th>DEADLINE NA DECYZJĘ</th>
    <th>WSTĘPNA OCENA <br> (1 najniższa, 3 najwyższa)</th>
    <th>RODZAJ</th>
    <th>NOTATKI</th>
    </thead>
    <tbody>
    <c:forEach items="${links}" var="link">
        <tr>
            <td><c:out value="${link.id}"/></td>
            <td><c:out value="${link.nazwa}"/></td>
            <td><c:out value="${link.link}"/></td>
            <td><c:out value="${link.kosztPLN}"/></td>
            <td><c:out value="${link.czasNauki}"/></td>
            <td><c:out value="${link.deadline}"/></td>
            <td><c:out value="${link.wstepnaOcena}"/></td>
            <td><c:out value="${link.rodzaj}"/></td>
            <td><c:out value="${link.notatki}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>
<a href="/Home/"> Powrót na stronę główną </a>
<br>
<br>
<a href="/Home/links/add"> Dodaj link </a>
</body>
</html>

