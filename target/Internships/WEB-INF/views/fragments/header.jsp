<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link rel="stylesheet" href="<spring:url value="../resources/css/home.css"/>" type="text/css"/>

<nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
    <div class="container topnav">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand topnav" href="<spring:url value="/"/>">Internship for You</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="<spring:url value="/internships"/>">List of ads</a>
                </li>
                <li>
                    <a href="<spring:url value="/list"/>">Manage ads</a>
                </li>
                <li>
                    <a href="<spring:url value="/company"/>">For Companies</a>
                </li>
                <li>
                    <a href="#contactFormModal" data-toggle="modal" data-target="#contactFormModal" style="outline: none;">Contact</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<div id="contactFormModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Let's stay in touch</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <div class="col-md-2">
                        <label class="control-label">Name:</label>
                    </div>
                    <div class="col-md-4">
                        <input class="form-control" id="name" type="text" placeholder="Your Name">
                    </div>
                    <div class="col-md-2">
                        <label class="control-label">Email:</label>
                    </div>
                    <div class="col-md-4">
                        <input class="form-control" id="email" type="text" placeholder="Your Email">
                    </div>
                    <br /><br />
                    <div class="col-md-2">
                        <label class="control-label">Message: </label>
                    </div>
                    <div class="col-md-10">
                        <textarea class="col-md-10 form-control" id="comment" placeholder="Your Message for Us" style="width: 60%;"></textarea>
                    </div>
                    <br /><br />
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal">Send</button>
            </div>
        </div>
    </div>
</div>

</body>
</html>