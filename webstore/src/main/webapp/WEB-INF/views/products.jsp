<%--
  Created by IntelliJ IDEA.
  User: bwangai
  Date: 1/4/17
  Time: 5:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html">
    <link rel="stylesheet"
          href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
    <title>Products</title>
</head>
<body>
<section>
    <div class="jumbotron">
        <div class="container">
            <h1>Products</h1>
            <p>All the products available in our store</p>
        </div>
    </div>
</section>

<section class="container">
    <div class="row">
        <c:forEach items="${products}" var="product">
            <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
                <div class="thumbnail">
                    <div class="caption">
                        <h3>${product.name}</h3>
                        <p>${product.description}</p>
                        <p>Ksh${product.unitPrice}</p>
                        <p>Available ${product.unitsInStock} units in stock</p>
                        <p>
                            <a href=" <spring:url value="/products/product?id=${product.productId}" /> "
                               class="btn btn-primary">
                                <span class="glyphicon-info-sign glyphicon"/></span> Details</a>
                        </p>

                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</section>
</body>
</html>
