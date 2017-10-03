<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/home.css" />" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Ad Details</title>

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

</head>

<body>

<%@ include file="../views/fragments/header.jsp"%>

<!-- Page Content -->
<div class="container">

    <!-- Page Header -->
    <div class="row">
        <div class="col-lg-12">
            <br>
            <h1 class="page-header">${ad.title}
                <small>details </small>
            </h1>
        </div>
    </div>
    <!-- /.row -->

    <div class="row">

        <div class="col-lg-6">

            <div class="card mt-4">
                <img class="card-img-top img-responsive" src="<c:url value="/resources/images/${ad.company}.jpg" />" alt="">
                <div class="card-body">
                    <h3 class="card-title">${ad.title}</h3>
                    <h4>Deadline: ${ad.deadline}</h4>
                    <br>
                    <h5>Company: ${ad.company}</h5>
                    <h5>Category: ${ad.category}</h5>
                    <h5>City: ${ad.city}</h5>
                    <br><br>
                    <p class="card-text">We are hiring for: <br><br> ${ad.description}</p>
                    <br>
                </div>
            </div>
            <!-- /.card -->
        </div>
        <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

</body>

<style>

    .img-responsive, .card-img-top{
        max-height:450px !important;
        max-width:450px !important;
    }

    body {
        padding-top: 54px;
    }

    @media (min-width: 992px) {
        body {
            padding-top: 56px;
        }
    }
</style>

</html>
