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
            <h1 class="page-header">Add new
                <small> ad here</small>
            </h1>
        </div>
    </div>
    <!-- /.row -->

    <div class="row">
        <form:form method="POST" modelAttribute="ad">
            <form:input type="hidden" path="id" id="id"/>
            <table>
                <tr>
                    <td><label for="title">Title: </label> </td>
                    <td><input type="text" id="title" placeholder='Title' class="form-control"/></td>
                    <td><form:errors path="title" cssClass="error"/></td>
                </tr>

                <tr>
                    <td><label for="deadline">Deadline: </label> </td>
                    <td><input type="text" id="deadline" placeholder='Deadline' class="form-control"/></td>
                    <td><form:errors path="deadline" cssClass="error"/></td>
                </tr>

                <tr>
                    <td><label for="company">Company: </label> </td>
                    <td><input type="text" id="company" placeholder='Company' class="form-control"/></td>
                    <td><form:errors path="company" cssClass="error"/></td>
                </tr>

                <tr>
                    <td><label for="city">City: </label> </td>
                    <td><input type="text" id="city" placeholder='City' class="form-control"/></td>
                    <td><form:errors path="city" cssClass="error"/></td>
                </tr>

                <tr>
                    <td><label for="category">Category: </label> </td>
                    <td><input type="text" id="category" placeholder='Category' class="form-control"/></td>
                    <td><form:errors path="category" cssClass="error"/></td>
                </tr>

                <tr>
                    <td><label for="description">Description: </label> </td>
                    <td><textarea id="description" placeholder="Description" class="form-control"></textarea></td>
                    <td><form:errors path="description" cssClass="error"/></td>
                </tr>

                <tr>
                    <td colspan="3">
                        <c:choose>
                            <c:when test="${edit}">
                                <input type="submit" class="btn btn-sm btn-primary btn-create" value="Update"/>
                            </c:when>
                            <c:otherwise>
                                <input type="submit" class="btn btn-sm btn-primary btn-create" value="Add New">
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </table>
        </form:form>
        <br/>
        <br/>
        Go back to <a href="<spring:url value="/list"/>"> List of All Ads</a>
        <br><br>
    </div>
    <!-- /.row -->



<%@ include file="../views/fragments/footer.jsp"%>

</body>

</html>
