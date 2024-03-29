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
<center><h3> ZADANIA DODANE DO REALIZACJI </h3></center>
<br>
<table border="1">
    <thead>
<%--    <th>LINK ID </th>--%>
    <th>NAZWA</th>
    <th>LINK</th>
    <th>KOSZT <br>W PLN</th>
    <th>SZACOWANY CZAS NAUKI <br>(W GODZINACH) <br> </th>
<%--    <th>REALIZACJA ID</th>--%>
    <th>PLANOWANE TERMINY</th>
    <th>NOTATKI W CZASIE NAUKI</th>
    <th>USUŃ Z REALIZOWANYCH</th>
    <th>EDYTUJ REALIZACJĘ</th>
    <th>DODAJ OCENĘ</th>


    </thead>
    <tbody>
    <c:forEach items="${realization}" var="realization">
        <tr>
<%--            <td><c:out value="${realization.link.id}"/></td>--%>
            <td><c:out value="${realization.link.nazwa}"/></td>
            <td><c:out value="${realization.link.link}"/></td>
            <td><c:out value="${realization.link.kosztPLN}"/></td>
            <td><c:out value="${realization.link.czasNauki}"/></td>
<%--            <td><c:out value="${realization.id}"/></td>--%>
            <td><c:out value="${realization.planowaneTerminy}"/></td>
            <td><c:out value="${realization.naukaNotatki}"/></td>
            <td><a href="/Home/realization/delete/${realization.id}">Usuń </a></td>
            <td><a href="/Home/realization/edit/${realization.id}">Edytuj </a></td>

            <td>     <c:if test="${!realization.link.ocena.activelinkocena}">
                <a href="/Home/rating/add/${realization.link.id}">Dodaj ocenę </a>
            </c:if>

                <c:if test="${realization.link.ocena.activelinkocena}">
                    Oceniony
                </c:if>
            </td>

        </tr>
    </c:forEach>
</tbody>
    <table/>

<br>
    <br>

    <table border="1">
        <thead>
        <th>RAZEM KOSZTY <br>(W PLN)</th>
        <th>ŁĄCZNY SZACOWANY <br>CZAS NAUKI <br>(W GODZINACH)</th>
        </thead>
<tbody>
    <c:set var="total" value="${0}"/>
    <c:forEach items="${realization}" var="realization" >
        <c:set var="total" value="${total + realization.link.kosztPLN}" />
    </c:forEach>
  <tr>
    <td>
        ${total}
    </td>

      <c:set var="total2" value="${0}"/>
      <c:forEach items="${realization}" var="realization">
          <c:set var="total2" value="${total2 + realization.link.czasNauki}" />
      </c:forEach>
      <td>
          ${total2}
      </td>
  </tr>

    </tbody>
<table/>


<br>
    <br>
<a href="/Home/"> Powrót na stronę główną </a>
<br>
<br>
<a href="/Home/links/all"> Wszystkie zadania </a><br>
<br> <a href="/Home/rating/all"> Zadania ocenione </a> <br>

<%--</body>--%>
</html>