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
	<script type='text/javascript'>
	$(function() {
		//calendar call function
		$('.datepicker').dcalendar();
		$('.datepicker').dcalendarpicker();

		    var max_fields = 10; //maximum input boxes allowed
		    var x = 1; //initlal text box count
		
		$('#add').click(function () {		   
			if(x < max_fields){ //max input box allowed
			    x++; //text box increment
			    $("#addblock").before('<div class="col-md-12 col-sm-12" id="deceased">	<a href="#" class="remove_field" title="Remove">X</a>	<div class="form-group col-md-3 col-sm-3">            <label for="name">Name*</label>            <input type="text" class="form-control input-sm" id="name" placeholder="">        </div>	<div class="form-group col-md-3 col-sm-3">            <label for="gender">Gender*</label>            <input type="text" class="form-control input-sm" id="gender" placeholder="">        </div>	<div class="form-group col-md-3 col-sm-3">            <label for="age">Age*</label>            <input type="text" class="form-control input-sm" id="age" placeholder="">        </div>	<div class="form-group col-md-3 col-sm-3">            <label for="DOB">Date of Birth or Exact Birth Year*</label>            <input type="text" class="form-control input-sm datepicker" id="DOB'+x+'" placeholder="">        </div>	<div class="form-group col-md-3 col-sm-3">            <label for="DOD">Date of Death or Exact Death Year*</label>             <input type="text" class="form-control input-sm datepicker" id="DOD'+x+'" placeholder="">        </div>	<div class="form-group col-md-3 col-sm-3">            <label for="mother">Deceased Person\'s Mother Name*</label>            <input type="text" class="form-control input-sm" id="mother" placeholder="">        </div>	<div class="form-group col-md-3 col-sm-3">            <label for="father">Deceased Person\'s Father Name*</label>            <input type="text" class="form-control input-sm" id="father" placeholder="">        </div>	<div class="form-group col-md-3 col-sm-3">	    <label for="photo">Upload Photo*</label>	    <input type="file" id="photo">	    <p class="help-block">Please upload individual photo. Group photo is not acceptable.</p>	</div></div>');

				$('.datepicker').dcalendarpicker();
			}  else{
				alert("Only 10 Names Allowed");
			}  
		});
		$(document).on('click', '.remove_field', function(e){
		        e.preventDefault(); 
			$(this).parent('div').remove(); 
			x--;
		});

		
	});
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
                        <li class="active"><a href="index">Home</a></li>
                        <li><a href="/Reception/followup">Follow up</a></li>
                        <li><a href="/Reception/about-us">About Us</a></li>
                        <li><a href="/Reception/services">Services</a></li>                     
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
	<div class="container" align="right">	
	<a href="technologysetup">Technology</a><br>
	<a href="sourceofinfosetup">Source of Information</a><br>
	<a href="followupmodesetup">Follow up Mode</a><br>
	</div>

	
	<section>
	<div class="container" align="center">
	<table border="2" width="40%" cellpadding="3" >  
	<thead><h1>Types Of Technologies</h1></thead>
	<tr><th>Follow up Id</th><th>Enquiry ID</th><th>Client Name </th><th>Enquiry Description</th><th>Status</th></tr>  
	<c:forEach var="st" items="${list}">
	<tr>
	<td>${st.getModeId() }</td>
	<td>${st.getFollowUpMode() }</td>
	
	<td><a href="followupreminder2/${ st.getModeId()}">Edit</a></td>
	<td><a href="followupreminder2/${ st.getModeId()}">Delete</a></td>
	</tr>
	</c:forEach>
	</table>
	<td><a href="followupreminder2/${ st.getModeId()}">Add New Technology</a></td>
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