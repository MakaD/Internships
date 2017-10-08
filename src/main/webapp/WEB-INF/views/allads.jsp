<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/home.css" />" >
<link rel="stylesheet" href="<c:url value="/resources/css/allads.css" />" >
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
            <h1 class="page-header">Manage
                <small>all ads here</small>
            </h1>
        </div>
    </div>
    <!-- /.row -->

    <div class="row">

        <div class="col-md-10 col-md-offset-1">

            <div class="panel panel-default panel-table">
                <div class="panel-heading">
                    <div class="row ">
                        <div class="col col-xs-4 alignment">
                            <h3 class="panel-title">List of all ads</h3>
                        </div>
                        <div class="col col-xs-4">
                            <form class="navbar-form" role="search" action="<spring:url value="/search/"/>">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="search_bar" name="search_bar" placeholder="Search">
                                    <div class="input-group-btn">
                                        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col col-xs-4 text-right alignment">
                            <a href="<spring:url value="/new"/>" class="btn btn-sm btn-primary btn-create" role="button">Add New</a>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <table class="table table-striped table-bordered table-list">
                        <thead>
                        <tr>
                            <th><em class="fa fa-cog"></em></th>
                            <th>Title</th>
                            <th>Deadline</th>
                            <th>Company</th>
                            <th>Category</th>
                            <th>City</th>

                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${ads}" var="ad">
                        <tr>
                            <td align="center">
                                <a class="btn btn-default" onclick="location.href = '/edit/${ad.id}/ad';"><em class="fa fa-pencil"></em></a>
                                <a class="btn btn-danger" onclick="location.href = '/delete/${ad.id}/ad';"><em class="fa fa-trash"></em></a>
                            </td>
                            <td>${ad.title}</td>
                            <td>${ad.deadline}</td>
                            <td>${ad.company}</td>
                            <td>${ad.category}</td>
                            <td>${ad.city}</td>

                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                </div>

            </div>

        </div>
    </div>
</div>


<%@ include file="../views/fragments/footer.jsp"%>

</body>

<style>

    .glyphicon-search{
        height: 20px;
    }
    .alignment{
        height: 50px;
        margin-top: 10px;
    }

</style>

</html>