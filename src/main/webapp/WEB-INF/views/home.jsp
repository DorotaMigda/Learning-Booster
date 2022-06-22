<%--
  Created by IntelliJ IDEA.
  User: dorota
  Date: 07.06.2022
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>STRONA GŁÓWNA</title>
</head>
<body>
<c:url var="home_url" value="/"/>
<center> <h1> LEARNING BOOSTER STRONA GŁÓWNA </h1></center><br><br>
<center><br> <h2><a href=links/add> Dodaj nowe zadanie </a></h2> <br><br>
<br> <h2><a href =links/all\> Wszystkie zadania </a> </h2><br><br>
<br> <h2><a href =realization/all>Zadania dodane do realizacji</a></h2><br><br>
<br> <h2><a href =rating/all\> Zadania ocenione </a> </h2><br></center>
</body>
</html>






