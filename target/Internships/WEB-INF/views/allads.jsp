<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>All Ads</title>

    <style>
        tr:first-child{
            font-weight: bold;
            background-color: #C6C9C4;
        }
    </style>

</head>


<body>
<h2>List of Ads</h2>
<table>
    <tr>
        <td>TITLE</td><td>Company</td><td>City</td><td>Id</td><td></td>
    </tr>
    <c:forEach items="${ads}" var="ad">
        <tr>
            <td>${ad.title}</td>
            <td>${ad.company}</td>
            <td>${ad.city}</td>
            <td><a href="<c:url value='/edit-${ad.id}-employee' />">${ad.id}</a></td>
            <td><a href="<c:url value='/delete-${ad.id}-employee' />">delete</a></td>
        </tr>
    </c:forEach>
</table>

<br/>

</body>
</html>
