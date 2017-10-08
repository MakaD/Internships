<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
        <%--@elvariable id="ad" type="com.marinadamnjanovic.model.AdModel"--%>
        <form:form method="POST" action="/new" modelAttribute="ad">
            <form:input type="hidden" path="id" id="id"/>
            <table>
                <tr>
                    <td><form:label for="title" path="title">Title: </form:label> </td>
                    <td><form:input type="text" id="title" placeholder='Title' path="title" class="form-control"/></td>
                    <td><form:errors path="title" style="color:red" cssClass="error"/></td>
                </tr>
                <tr class="blank_row">
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td><form:label for="deadline" path="deadline">Deadline: </form:label> </td>
                    <td><form:input type="text" id="deadline" placeholder='Deadline' path="deadline" class="form-control"/></td>
                    <td><form:errors path="deadline" style="color:red" cssClass="error"/></td>
                </tr>
                <tr class="blank_row">
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td><form:label for="company" path="company">Company: </form:label> </td>
                    <td><form:input type="text" id="company" placeholder='Company' path="company" class="form-control"/></td>
                    <td><form:errors path="company" style="color:red" cssClass="error"/></td>
                </tr>
                <tr class="blank_row">
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td><form:label for="city" path="city">City: </form:label> </td>
                    <td><form:input type="text" id="city" placeholder='City' path="city" class="form-control"/></td>
                    <td><form:errors path="city" style="color:red" cssClass="error"/></td>
                </tr>
                <tr class="blank_row">
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td><form:label for="category" path="category">Category: </form:label> </td>
                    <td><form:input type="text" id="category" placeholder='Category' path="category" class="form-control"/></td>
                    <td><form:errors path="category" style="color:red" cssClass="error"/></td>
                </tr>
                <tr class="blank_row">
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td><form:label for="description" path="description">Description: </form:label> </td>
                    <td><form:textarea id="description" placeholder="Description" path="description" class="myarea form-control"></form:textarea></td>
                    <td><form:errors path="description" style="color:red" cssClass="error"/></td>
                </tr>
                <tr class="bigger blank_row">
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="3">
                        <c:choose>
                            <c:when test="${edit}">
                                <input type="submit" class="btn btn-md btn-primary btn-create" value="Update"/>
                            </c:when>
                            <c:otherwise>
                                <input type="submit" class="btn btn-md btn-primary btn-create" value="Add New">
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </table>
        </form:form>
        <br/><br/>
        Go back to <a href="<spring:url value="/list"/>"> List of All Ads</a>
        <br/><br/>
    </div>
    <!-- /.row -->



<%@ include file="../views/fragments/footer.jsp"%>

</body>

<style>
    .blank_row {
        height: 10px !important;
        background-color: #FFFFFF;
    }
    .myarea {
        height: 250px !important;
        width: 500px !important;
    }

</style>

</html>
