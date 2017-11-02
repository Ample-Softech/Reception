<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.model.Quotation"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> --%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quotation</title>
<!-- Bootstrap -->
    <jsp:include page="/links.jsp"></jsp:include>
    <style type="text/css">
     

 *[role="form"] {
    max-width: 530px;
    padding: 15px;
    margin: 0 auto;
    background-color: #fff;
    border-radius: 0.3em;
		}

*[role="form"] h2 {
    margin-left: 5em;
    margin-bottom: 1em;
	} 
    </style>
<%
	if(session.getAttribute("userLog")!="loggedIn") {
		response.sendRedirect("/Reception/loginpage");
	} 
%>
</head>
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
                    <a class="navbar-brand" href="index">Ample Softech</a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index">Home</a></li>
                        <li><a href="/Reception/followup">Follow up</a></li>
                        <li><a href="/Reception/about-us.html">About Us</a></li>
                        <li><a href="/Reception/services.html">Services</a></li>
                        <%if(session.getAttribute("userLog")=="loggedIn") {%>
						<li><a href="/Reception/logout">Logout</a></li><%} else{%>
                        <li><a href="/Reception/loginpage">Login</a></li><%} %>                                                
                        </ul>
                </div>
                
                
                
            </div><!--/.container-->
        </nav><!--/nav-->
		
		
		<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Setups
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
        	 <li><a href="/Reception/technologysetup">Technology</a></li>
     		<li><a href="/Reception/sourceofinfosetup">Source of Information</a></li>        
     	</ul>
      </li>
		<li class="active"><a href="/Reception/viewfollowupreminder/1">Follow up Reminder</a></li>
		<li><a href="/Reception/viewfollowup/1">Follow up View</a></li> 
    </ul>
  </div>
</nav>
		
    </header><!--/header-->
	
	<section id="blog" class="container">
     	<!-- <div class="container"> -->
            <form class="form-horizontal" role="form" name="quotation" >
                <h2><b>Quotation</b></h2>
                <div class="form-group">
                    <label for="from" class="col-sm-3 control-label">From</label>
                    <div class="col-sm-9">
                        <input type="text" id="from" placeholder="Ample Softech System Pvt.Ltd" class="form-control" autofocus>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="clientId" class="col-sm-3 control-label">Client ID</label>
                    <div class="col-sm-9">
                        <input type="text" id="clientId" placeholder="client Id" name="clientId" class="form-control" autofocus>
                        <input type="submit" value="Search" formaction="quote" >
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="bill to" class="col-sm-3 control-label">Bill to</label>
                    <div class="col-sm-9">
                        <input type="text" id="bill to" placeholder="client name" name="ClientName" class="form-control" autofocus>
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="contact no" class="col-sm-3 control-label">Contact no.</label>
                    <div class="col-sm-9">
                        <input type="number" id="contact no" placeholder="contact no" name="ClientContact" class="form-control" autofocus>
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <input type="email" id="email" placeholder="Email" name="ClientEmailId" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="project discription" class="col-sm-3 control-label">Project Description</label>
                    <div class="col-sm-9">
                       <textarea class="form-control" id="project description" name="ProjectDescription"></textarea>
                    </div>
                </div>
                

					<div class="form-group">
                    <label for="quotation no" class="col-sm-3 control-label">Quotation no.</label>
                    <div class="col-sm-9">
                        <input type="text" id="quotation no" placeholder="quotation no" class="form-control" autofocus onkeypress="">
                    </div>
                </div>
					
				                
                
                <div class="form-group">
                    <label for="quotationdate" class="col-sm-3 control-label">Quotation date</label>
                    <div class="col-sm-9">
                        <input type="date" id="quotationdate" name="QuotationDate" class="form-control">
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="quotationduedate" class="col-sm-3 control-label">Quotation due date</label>
                    <div class="col-sm-9">
                        <input type="date" id="quotationduedate" name="QuotationDueDate" class="form-control">
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="amount" class="col-sm-3 control-label">Amount</label>
                    <div class="col-sm-9">
                        <input type="text" id="amount" placeholder="amount" name="Amount" class="form-control" autofocus>
                    </div>
                </div>
                
                 <div class="form-group">
                    <div class="col-sm-6" >
                    <button type="submit" class="btn btn-primary btn-block">Save</button>
                    </div>
                   
                    <div class="col-sm-6">
                        <button type="submit" class="btn btn-primary btn-block" >Print</button>
                    </div>
                
                	<div class="col-sm-6">
                        <button type="submit" class="btn btn-primary btn-block" formaction="portfolio">Invoice</button>
                    </div>
            </form> <!-- /form -->
        </div> <!-- ./container -->
        
<jsp:include page="footer.jsp"></jsp:include>
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>   
    <script src="js/wow.min.js"></script>
	<script src="js/main.js"></script>
    
</body>
</html>