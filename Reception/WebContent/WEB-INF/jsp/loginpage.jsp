<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Technology" %> 
<%@ page import="com.model.SourceOfInfo" %>
<%@ page import="java.util.*" %>   

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%
	if(session.getAttribute("userLog")=="loggedIn") {
		response.sendRedirect("/Reception/followup");
	} 
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ample Project</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/dcalendar.picker.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link href="css/animate.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">      
	<link href="css/style.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    
    <jsp:include page="/links.jsp"></jsp:include>
    
    <style type="text/css">
	@import url("css/bootstrap.css");
    </style>
	<script src="js/jquery-1.12.4.js"></script>
	<script src="js/dcalendar.picker.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</head>
<br>
 <body class="homepage">   
	<header id="header">
        <nav class="navbar navbar-fixed-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index">AmpleSoftech</a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index">Home</a></li>
                        <!-- <li><a href="/Reception/followup">Follow up</a></li> -->
                        <li><a href="/Reception/about-us">About Us</a></li>
                        <li><a href="/Reception/services">Services</a></li>
                        </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->
	 <section id="login" >
        <div class="container">
           <div class="center wow fadeInDown">
                <h2>Login Form</h2>
            </div>

            <div class="row">
                <div class="features">
                   <div class="container">
           <div class="center-block"><!--/.col-md-4--><!--/.col-md-4--><!--/.col-md-4--><!--/.col-md-4--><!--/.col-md-4--><!--/.col-md-4-->
                </div><!--/.services-->
            </div><!--/.row-->    
        </div><!--/.container-->

<!-------------------------------------Form Start------------------------------------------------->
	<div class="panel panel-primary" style="margin:20px;">
		<div class="panel-heading">
			<h1>${msg}</h1>
        	<h3 class="panel-title">Login </h3>
		</div>

		<div class="panel-body">
		<form:form action="/Reception/login" >
			<div class="col-md-12 col-sm-12">
				<div class="form-group col-md-6 col-sm-6">
            		<label for="ClientName">User Name*	</label>
            		<form:input path="username" type="text" name="username" class="form-control input-sm" />
        		</div>
        
        		<div class="form-group col-md-6 col-sm-6">
            		<label for="ClientFirm">Password	</label>
            		<form:input path="password" type="password" name="password" class="form-control input-sm"  placeholder="password" />
        		</div>
    		</div>    
       
			<div class="col-md-12 col-sm-12">
				<div class="form-group col-md-3 col-sm-3 pull-right" >
					<input type="submit" class="btn btn-primary" value="Login"/>
				</div>
			</div>
		</form:form>
		</div>
	</div>

<!-----------------------------------------------Form  End------------------------------------------>

<div class="top-bar">
		<div class="container">
			<div class="row">
			    <div class="col-lg-12">
				   <div class="social">
						<ul class="social-share">
							<li><a href="https://en-gb.facebook.com/login/"><i class="fa fa-facebook"></i></a></li>
							<li><a href="https://twitter.com/login?lang=en"><i class="fa fa-twitter"></i></a></li>
							<li><a href="https://www.linkedin.com/uas/login"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="https://login.skype.com/login?message=signin_continue"><i class="fa fa-skype"></i></a></li>
						</ul>
				   </div>
                </div>
			</div>
		</div><!--/.container-->
	</div><!--/.top-bar-->
	
	<footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; Ample Softech 2017. All Rights Reserved.
                    
                </div>
                
            </div>
        </div>
    </footer><!--/#footer-->
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>   
    <script src="js/wow.min.js"></script>
	<script src="js/main.js"></script>    
</body>
</html>