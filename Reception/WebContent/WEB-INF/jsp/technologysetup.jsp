<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<%
	if(session.getAttribute("userLog")!="loggedIn") {
		response.sendRedirect("/Reception/loginpage");
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
<!-- =======================================================
        Theme Name: Gp
        Theme URL: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-templat/
        Author: BootstrapMade
        Author URL: https://bootstrapmade.com
    ======================================================= -->  
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
                    <a class="navbar-brand" href="index">Gp.</a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index">Home</a></li>
                        <li><a href="/Reception/followup">Follow up</a></li>
                        <li><a href="/Reception/about-us">About Us</a></li>
                        <li><a href="/Reception/services">Services</a></li>
                        <li><a href="/Reception/logout">Logout</a></li>                       
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->
		<br>

		
<!--------------------------------------Body --------------------------------------------------->		
	<section class="homepage">	
        <nav class="navbar " role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    
                </div>
				
               <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/Reception/viewfollowupreminder/1">Follow up Reminder</a></li>
                        <li><a href="/Reception/viewfollowup/1">Follow up View</a></li>   
                       <li><a href="/Reception/setups">Setups</a></li>
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
	     </section><!--/#middle-->
	     

	<!-- ---------------------------------------------------------------------------------------------- -->
	
	<div class="container" align="right" >
	<a href="technologysetup" class="btn btn-primary">Technology</a><br>
	<a href="sourceofinfosetup" class="btn btn-primary">Source of Information</a><br>
	<a href="followupmodesetup" class="btn disabled">Follow up Mode</a><br>
	
	<section>
	<div align="center" class="colo-md-12">

	<h3>${msg }</h3>
		<c:set var="tech" value="${tech}"></c:set>
		<c:set var="addtech" value="${addtech}"></c:set>
		<c:choose>
			<c:when test="${tech=='yes'}">
				<form:form action="/Reception/updateTech" class="form-horizontal">
				<form:hidden path="TechnologyId"/>
				<div class=" col-md-8 col-md-offset-4">
					<div class="row">
						<div class="col-sm-12">
							<div class="col-sm-10">
								<form:input path="Technology" class="form-control input-sm"/>
							</div>
							<div class="col-sm-2">
								<input type="submit" value="Update" class="form-control btn btn-info input-sm">
							</div>
						</div>
					</div>
				</div>
				</form:form>
	 		</c:when>
	 
	 		<c:when test="${addtech=='yes'}">
				<form:form action="/Reception/AddTech">
					<%-- <form:input path="Technology" />
					<input type="submit" value="Add" class="btn btn-info">
					 --%>
					<div class=" col-md-8 col-md-offset-4">
					<div class="row">
						<div class="col-sm-12">
							<div class="col-sm-10">
								<form:input path="Technology" class="form-control input-sm"/>
							</div>
							<div class="col-sm-2">
								<input type="submit" value="Add" class="form-control btn btn-info input-sm">
							</div>
						</div>
					</div>
				</div>
				</form:form>
			 </c:when>
			<c:otherwise>
			</c:otherwise>
			</c:choose>
	
	<table  class="table table-striped table- table-bordered table-hover table-inverse">  
	<thead><h1>Technologies We Work On</h1></thead>
	<tr class=""><a href="/Reception/AddTechnology" class="btn btn-primary">Add New Technology</a></tr>
	<tr><th>Technology ID</th><th>Technology</th></tr>  
	<c:forEach var="st" items="${list}">
	<tr>
	<td >${st.getTechnologyId() }</td>
	<td>${st.getTechnology() }</td>
	
	<td ><a href="/Reception/updatetechnology/${ st.getTechnologyId()}" class="btn btn-info">Edit</a></td>
	<td ><a href="/Reception/deleteTech/${ st.getTechnologyId()}" class="btn btn-danger form-control" >Delete</a></td>
	</tr>
	</c:forEach>
	</table>
	
	</div>
	
	</section>
	
	</div>
	
	
	<!-- ---------------------------------------------------------------------------------------------- -->
	
	<section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Company</h3>
                        <ul>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">We are hiring</a></li>
                            <li><a href="#">Meet the team</a></li>
                            <li><a href="#">Copyright</a></li>                           
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Support</h3>
                        <ul>
                            <li><a href="#">Faq</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Forum</a></li>
                            <li><a href="#">Documentation</a></li>                          
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Developers</h3>
                        <ul>
                            <li><a href="#">Web Development</a></li>
                            <li><a href="#">SEO Marketing</a></li>
                            <li><a href="#">Theme</a></li>
                            <li><a href="#">Development</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Our Partners</h3>
                        <ul>
                            <li><a href="#">Adipisicing Elit</a></li>
                            <li><a href="#">Eiusmod</a></li>
                            <li><a href="#">Tempor</a></li>
                            <li><a href="#">Veniam</a></li>                           
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->
            </div>
        </div>
    </section><!--/#bottom-->
	
	<div class="top-bar">
		<div class="container">
			<div class="row">
			    <div class="col-lg-12">
				   <div class="social">
						<ul class="social-share">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-skype"></i></a></li>
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
                    &copy; Gp Theme. All Rights Reserved.
                    <div class="credits">
                        <!-- 
                            All the links in the footer should remain intact. 
                            You can delete the links only if you purchased the pro version.
                            Licensing information: https://bootstrapmade.com/license/
                            Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Gp
                        -->
                        <a href="https://bootstrapmade.com/">Bootstrap Themes</a> by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                    </div>
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Faq</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
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