<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<center>
<head>
    <title>WSZYSTKIE ZADANIA </title>
</head>
<body>
<h3> WSZYSTKIE ZADANIA </h3>
<br>
<br>
<table border="1">
    <thead>
<%--    <th>ID</th>--%>
    <th>NAZWA</th>
    <th>LINK</th>
    <th>KOSZT <br> W PLN</th>
    <th>SZACUNKOWY <br> CZAS NAUKI <br>(w godzinach)</th>
    <th>DEADLINE NA DECYZJĘ</th>
    <th>WSTĘPNA OCENA <br> (1 najniższa, 3 najwyższa)</th>
    <th>RODZAJ</th>
    <th>NOTATKI</th>
    <th>EDYTUJ</th>
    <th>USUŃ</th>
    <th>STATUS</th>


    </thead>
    <tbody>
    <c:forEach items="${links}" var="link">
        <tr>
<%--            <td><c:out value="${link.id}"/></td>--%>
            <td><c:out value="${link.nazwa}"/></td>
            <td><c:out value="${link.link}"/></td>
            <td><c:out value="${link.kosztPLN}"/></td>
            <td><c:out value="${link.czasNauki}"/></td>
            <td><c:out value="${link.deadline}"/></td>
            <td><c:out value="${link.wstepnaOcena}"/></td>
            <td><c:out value="${link.rodzaj}"/></td>
            <td><c:out value="${link.notatki}"/></td>
            <td><a href="/Home/links/edit/${link.id}">Edytuj </a></td>
            <td><a href="/Home/links/delete/${link.id}">Usuń </a></td>


      <td>     <c:if test="${!link.realizacja.activelink and !link.ocena.activelinkocena}">
            <a href="/Home/realization/add/${link.id}">Dodaj do realizacji </a>
            </c:if>

          <c:if test="${link.realizacja.activelink}">
              Dodany do realizacji <br>
          </c:if>

          <c:if test="${link.ocena.activelinkocena}">
              Oceniony
          </c:if>



        </tr>
    </c:forEach>
    </tbody>
</table>
</center>
<br>
<a href="/Home/"> Powrót na stronę główną </a>
<br>
<br>
<a href="/Home/links/add"> Dodaj nowe zadanie </a> <br>

<br> <a href ="/Home/realization/all">Zadania dodane do realizacji</a> <br>
<br> <a href ="/Home/rating/all">Zadania ocenione</a>
</body>

</html>

