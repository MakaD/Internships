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

        <div class="col-sm-offset-2">

            <div class="col-md-6">
                <img class="img-fluid" src="<c:url value="/resources/images/${ad.company}.jpg"/>" alt="">
            </div>

            <div class="col-md-6">
                <h3 class="my-3">${ad.title}</h3>
                <h4 class="my-3">Deadline: ${ad.deadline}</h4>
                </br>
                <ul>
                    <h5>Company: ${ad.company}</h5>
                    <h5>Category: ${ad.category}</h5>
                    <h5>City: ${ad.city}</h5>
                </ul>
            </div>

        </div>
    </div>
    <!-- /.row -->

    <div class="row">
        <hr class="linestyle">
    </div>

    <div class="row">

        <div class="col-lg-8 col-sm-offset-2 text-center">
            <h3>We are hiring for:</h3>
            <br><br>
            <p>${ad.description}</p>
            <br>
        </div>

    </div>

    <div class="row">
        <hr class="linestyle">
    </div>

</div>
<!-- /.container -->

<%@ include file="../views/fragments/footer.jsp"%>

</body>

<style>
    body {
        padding-top: 54px;
    }
    .img-fluid{
        max-height:200px !important;
        max-width:450px !important;
    }
    @media (min-width: 992px) {
        body {
            padding-top: 56px;
        }
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
