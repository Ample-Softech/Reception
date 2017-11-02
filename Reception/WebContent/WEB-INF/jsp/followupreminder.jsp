<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
 <%
	if(session.getAttribute("userLog")!="loggedIn") {
		response.sendRedirect("/Reception/loginpage");
	} 
%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Technology Setup</title>
<!-- Bootstrap -->
    <jsp:include page="/links.jsp"></jsp:include>
    <style type="text/css">
     

*[role="form"] {
    max-width: 530px;
    padding: 15px;
    margin: 0 auto;
    background-color: #fff;
    border-radius: 3px;
		}

*[role="form"] h2 {
    margin-left: 5em;
    margin-bottom: 1em;
	}
    </style>
    
    
         	
	<script type="text/javascript">
	 function search(){
		 var v=document.forms["myform"].Needed.value;		 
		 if(v=='n'){
			 var v3=document.getElementById("NextFollowUpDate").disabled=true;
			 }
		 if(v=='y'){
			 var v3=document.getElementById("NextFollowUpDate").disabled=false;
		 }
	}
</script>
	
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
                    <a class="navbar-brand" href="index">Ample Softech</a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="/Reception/index">Home</a></li>
                        <li class="/Reception/active"><a href="FollowUp">Follow Up</a></li>
                        <li><a href="/Reception/about-us">About Us</a></li>
                        <li><a href="/Reception/services">Services</a></li> 
                        <%if(session.getAttribute("userLog")=="loggedIn") {%>
						<li><a href="/Reception/logout">Logout</a></li><%} else{%>
                        <li><a href="/Reception/loginpage">Login</a></li><%} %>                                                
                                           
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->

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
	<!-- -------------------------------------------------------------------------------------------- -->
	 <div id="parentDiv">
            <form:form name="myform" action="/Reception/editfollowup" method="POST"  class="form-horizontal" role="form" >              
                <div class="form-group active">
                    <label for="FollowUpId" class="col-sm-5 control-label">Follow up number</label>
                    <div class="col-sm-7">
                    	${fu.getFollowUpId() }
                        <form:hidden path="FollowUpId" name="FollowUpId" id="FollowUpId"  class="form-control input-sm"  />
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="EnquiryId" class="col-sm-5 control-label">Enquiry Number</label>
                    <div class="col-sm-7">
                    	${fu.getEnquiryId() }
                        <form:hidden path="EnquiryId" name="EnquiryId" id="EnquiryId"  class="form-control input-sm"  />
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="ClientName" class="col-sm-5 control-label">Client Name</label>
                    <div class="col-sm-7">
                    	${fu.getClientName() }
                        <form:hidden path="ClientName" name="ClientName" id="clientName"  class="form-control input-sm"  />
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="ClientContact" class="col-sm-5 control-label">Client Contact Number</label>
                    <div class="col-sm-7">
                    	${fu.getClientContact() }
                        <form:hidden path="ClientContact" name="ClientContact" id="ClientContact"  class="form-control input-sm" />
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="ClientEmailId" class="col-sm-5 control-label">Client Email ID</label>
                    <div class="col-sm-7">
                        ${fu.getClientEmailId()}
                        <form:hidden path="ClientEmailId" name="ClientEmailId" id="ClientEmailId"  class="form-control input-sm"  />
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="EnquiryDescription" class="col-sm-5 control-label">Enquiry Description</label>
                    <div class="col-sm-7">
                       <form:input path="EnquiryDescription" class="form-control input-md" id="EnquiryDescription" name="EnquiryDescription" />
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="FollowUpMode" class="col-sm-5 control-label">Follow Up Mode</label>
                    <div class="col-sm-7">
                        <select name="FollowUpMode" class="form-control input-md" id="FollowUpMode">
						<option>Mode of Follow up</option>
						<option>Call</option>
						<option>Email</option>
						<option>SMS</option>
						</select>
                    </div>
                </div>
                
                
                
                 <div class="form-group">
                    <label for="FollowUpDate" class="col-sm-5 control-label">Follow Up Date</label>
                    <div class="col-sm-7">
                    	${fu.getFollowUpDate() }
                        <form:hidden path="FollowUpDate"  name="FollowUpDate" id="followUpDate" class="form-control input-sm" />
                    </div>
                </div>
               
                <div class="form-group">
                    <label for="Needed" class="col-sm-5 control-label">Need To Remind</label>
                    <div class="col-sm-7">
                        <select name="Needed" onchange="search()" class="form-control input-md" id="Needed">
						<option>Need to remind?</option>
						<option value="y">Yes</option>
						<option value="n">No</option>
						</select>
                    </div>
                </div>
                
                 <div class="form-group">
                    <label for="Response" class="col-sm-5 control-label">Response</label>
                    <div class="col-sm-7">
                        <input type="text" name="Response" id="Response" placeholder="Response" class="form-control input-md" >
                    </div>
                </div>
               
                <div class="form-group">
                    <label for="NextFollowUpDate" class="col-sm-5 control-label">Next Follow Up Date</label>
                    <div class="col-sm-7">
                        <form:input path="NextFollowUpDate" name="NextFollowUpDate" id="NextFollowUpDate"   class="form-control input-md" />
                    </div>
                </div>
               
               
                <div class="form-group">
                    <div class="col-sm-7 col-sm-offset-5">
                        <input type="submit" class="btn btn-primary btn-block" value="Submit"></button>
                    </div>
                </div>
            </form:form> <!-- /form -->
       </div>         	
<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->	
	
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