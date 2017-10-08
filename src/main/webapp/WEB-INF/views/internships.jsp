<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/home.css" />" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Internship for You</title>

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

</head>

<body>

<%@ include file="../views/fragments/header.jsp"%>

<div class="container">

    <!-- Page Header -->
    <div class="row">
        <div class="col-lg-12">
            <br>
            <h1 class="page-header">Your future
                <small>starts here</small>
            </h1>
        </div>
    </div>
    <!-- /.row -->

    <div class="row ">
        <div class="col col-md-12 text-right">
            <form class="navbar-form" role="search" action="<spring:url value="/searchHp/"/>">
                <div class="input-group">
                    <input type="text" class="form-control" id="search_bar" name="search_bar" placeholder="Search">
                    <div class="input-group-btn">
                        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div class="row">
        <hr class="linestyle">
    </div>

    <div class="row">
        <div class="col-md-10 col-md-offset-1">
        <c:forEach items="${ads}" var="ad">
            <div class=" col-md-4 portfolio-item">
                <a href="<c:url value='/addetails/${ad.id}'/> ">
                    <img class="img-responsive" src="<spring:url value="resources/images/${ad.company}.jpg"/>" alt="" style="min-height:50px;height:50px;">
                </a>
                <h3>
                    <a href="<c:url value='/addetails/${ad.id}'/>">${ad.title}</a>
                </h3>
                <h5>Category: ${ad.category}</h5>
                <h5>City: ${ad.city}</h5>
                <h5>Company: ${ad.company}</h5>
            </div>
        </c:forEach>
        </div>
    </div>

    <div class="row">
        <hr class="linestyle">
    </div>

    <!-- Pagination -->
    <div class="row text-center">
        <div class="col-lg-12">
            <ul class="pagination">
                <li>
                    <a href="#">&laquo;</a>
                </li>
                <li class="active">
                    <a href="#">1</a>
                </li>
                <li>
                    <a href="#">2</a>
                </li>
                <li>
                    <a href="#">3</a>
                </li>
                <li>
                    <a href="#">4</a>
                </li>
                <li>
                    <a href="#">5</a>
                </li>
                <li>
                    <a href="#">&raquo;</a>
                </li>
            </ul>
        </div>
    </div>
    <!-- /.row -->

</div>

<%@ include file="../views/fragments/footer.jsp"%>

</body>

<style>

    .portfolio-item {
        margin-bottom:20px;
    }

    .img-responsive {
        min-height:145px !important;
    }
    .glyphicon-search{
        height: 20px;
    }
    hr.linestyle {
        border: 0;
        height: 1px;
        background-image: -webkit-linear-gradient(left, #f0f0f0, #b4b1c9, #f0f0f0);
        background-image: -moz-linear-gradient(left, #f0f0f0, #b4b1c9, #f0f0f0);
        background-image: -ms-linear-gradient(left, #f0f0f0, #b4b1c9, #f0f0f0);
        background-image: -o-linear-gradient(left, #f0f0f0, #b4b1c9, #f0f0f0);
    }

</style>

</html>
