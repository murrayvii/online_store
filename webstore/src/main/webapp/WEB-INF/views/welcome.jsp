<%-- 
    Document   : welcome
    Created on : Jan 4, 2017, 12:06:11 PM
    Author     : bwangai
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet"
          href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">

    <title>JetBrains</title>
</head>
<body>
<section>
    <div class="jumbotron">
        <div class="container">
            <h1> ${greeting} </h1>
            <p> ${tagline} </p>
            <%--<p> ${test}</p>--%>
            <%--<p> ${result}</p>--%>
        </div>
    </div>
</section>
</body>
</html>
