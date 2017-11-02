<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


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
                    <a class="navbar-brand" href="index">Gp.</a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/Reception/index">Home</a></li>
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
                        <!-- <li><a href="/Reception/#">Next Follow up</a></li> -->
                        <li><a href="/Reception/setups">Setups</a></li>
                        </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
	     </section><!--/#middle-->
	     

	<!-- ---------------------------------------------------------------------------------------------- -->
	<section>
	
	<div class="container" align="center">
	<c:set var="cond" value="${viewe }"></c:set>
	<c:choose>
	<c:when test="${cond=='yes'}">
		<table class="table table-striped table-bordered table-hover table-condensed table-sm">  	
		<thead class="table table-dark"><tr><th>Enquiry ID</th><th>Enquiry Description</th><th>Technology</th>
		<th>Source</th></tr></thead>  
		<tr>
		<td>${e.getEnquiryId() }</td>
		<td>${e.getEnquiryDescription() }</td>
		<td>${e.getTechnologyId() }</td>
		<td>${e.getSourceId()}</td>
		</tr>
		</table>
	 </c:when>
	 
	<c:otherwise>
		</c:otherwise>
	</c:choose>
	
	<h1>Follow Up Reminders</h1>
	<table class="table table-striped table-bordered table-hover table-condensed table-sm">  	
	<thead class="table table-dark"><tr><th>Follow up Id</th><th>Enquiry </th><th>Client Name </th>
	<th>Enquiry Description</th><th>Status</th><th>Followup</th></del></tr></thead>  
	<c:forEach var="st" items="${list}">
	<tr>
	<td>${st.getFollowUpId() }</td>
	<td><a href="/Reception/viewenquiry/${st.getEnquiryId() }">View Enquiry</a></td>
	<td>${st.getClientName() }</td>
	<td>${st.getEnquiryDescription() }</td>
	<td>Open</td>
	<td><a href="/Reception/followupreminder2/${ st.getFollowUpId()}"><span class="glyphicon glyphicon-pencil"></span>  </a></td>
	</tr>
	</c:forEach>
	</table>
	
	
	<!-----------------------------------------------------------------------  -->
	
	<%  String pn=request.getAttribute("pn").toString();  
		int p=Integer.parseInt(pn);
      	String pa=request.getAttribute("pageid").toString();
      	int pageid=Integer.parseInt(pa);
	%>
	<!--Bottom Table UI-->
    <div class="d-flex justify-content-center">
	<!--Pagination -->
        <nav class="my-4 pt-2">
            <ul class="pagination pagination-circle pg-purple mb-0">
                <!--First-->
                <%if(pageid==1){%>
                <li class="page-item disabled  d-none d-md-block"><a  class="page-link">First</a></li>
                <%}else{ %>
                <li class="page-item d-none d-md-block"><a href="/Reception/viewfollowupreminder/1" class="page-link">First</a></li>
                <%} %>
                <!--Arrow left-->
                <%if(pageid==1){%>
                	<li class="page-item disabled">
                    	<a class="page-link" aria-label="Previous">
                    		<span aria-hidden="true">&laquo;</span>
                    		<span class="sr-only">Previous</span>
                		</a>
                	</li>   
                <%}else{ %>
                	<li class="page-item">
                    	<a href="/Reception/viewfollowupreminder/<%=pageid-1 %>" class="page-link" aria-label="Previous">
                    		<span aria-hidden="true">&laquo;</span>
                    		<span class="sr-only">Previous</span>
                		</a>
                </li>
                <%} %>                
				<% int i;
					for(i=1;i<=p;i++)
				{
				%>
                <li> <!-- class="page-item active" --><a href="/Reception/viewfollowupreminder/<%out.print(i); %>" class="page-link"><%= i %></a></li>
                <%} %>
                <!--Arrow right-->
                <%if(pageid==p){ %>
                <li class="page-item disabled">
                    <a class="page-link " aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
                <%}else{ %>
                <li class="page-item">
                    <a href="/Reception/viewfollowupreminder/<%=pageid+1 %>" class="page-link" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
                <%}%>
                </li>
                <!--First-->
                <%if(pageid==p){ %>
                <li class="page-item disabled d-none d-md-block"><a class="page-link">Last</a></li>
                <%}else{ %>
                <li class="page-item d-none d-md-block"><a href="/Reception/viewfollowupreminder/<%=p%>" class="page-link">Last</a></li>
                <%}%>
                </li>
                <!--First-->
            </ul>
        </nav>
        <!--/Pagination -->
        </div>
    <!--Bottom Table UI-->
	</div>	
	</section>
	
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