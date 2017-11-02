<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Invoice</title>
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
                        <li><a href="/Reception/about-us.html">About Us</a></li>
                        <li><a href="/Reception/services.html">Services</a></li>
                        <%if(session.getAttribute("userLog")=="loggedIn") {%>
						<li><a href="/Reception/logout">Logout</a></li><%} else{%>
                        <li><a href="/Reception/loginpage">Login</a></li><%} %>
                    </ul>
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
		
    </header><!--/header-->
		
	<section id="portfolio">
        <div class="container">
            <div class="center">
               <h2>Invoice</h2>
            
            </div>
        

            
            
            
 <div class="container"> 
            <form class="form-horizontal" role="form">
                
                <div class="form-group">
                    <label for="from" class="col-sm-3 control-label">From</label>
                    <div class="col-sm-9">
                        <input type="text" id="from" placeholder="Ample Softech" value="Ample Softech" class="form-control" autofocus>
                    </div>
                </div>
                
                
                  <div class="form-group">
                    <label for="Quotation No." class="col-sm-3 control-label">Quotation Id.</label>
                    <div class="col-sm-9">
                        <input type="text" id="" placeholder="Quotation Id." name="QuotationId"  class="form-control">
                    </div>
                    <div class="col-sm-6">
                        <input type="submit" value="submit" formaction="port" class="btn btn-primary btn-block" >
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="ClientId" class="col-sm-3 control-label">Client Id</label>
                    <div class="col-sm-9">
                        <input type="text" id="ClientId" placeholder="" class="form-control" autofocus>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="bill to" class="col-sm-3 control-label">Bill to</label>
                    <div class="col-sm-9">
                        <input type="text" id="bill to" placeholder="client name" class="form-control" autofocus>
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="Contact Number" class="col-sm-3 control-label">Contact Number</label>
                    <div class="col-sm-9">
                        <input type="text" id="Contact Number" placeholder="contact no" class="form-control" autofocus>
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <input type="email" id="email" placeholder="Email" class="form-control">
                    </div>
                </div>
               
                  
                
                
                <div class="form-group">
                    <label for="Quotation Date" class="col-sm-3 control-label">Quotation Date</label>
                    <div class="col-sm-9">
                    <input type="Date" id="Quotation Date" placeholder="Quotation Date" class="form-control">
                        
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="Quotation Due Date" class="col-sm-3 control-label">Quotation Due Date</label>
                    <div class="col-sm-9">
                     <input type="Date" id="Quotation Date" placeholder="Quotation Date" class="form-control">   
                    </div>
                </div>
                
                
                
                
                
                <div class="form-group">
                    <label for="Description" class="col-sm-3 control-label">Description</label>
                    <div class="col-sm-9">
                     <input type="text" id="Amount" placeholder="Description" class="form-control">   
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="Amount" class="col-sm-3 control-label">Amount</label>
                    <div class="col-sm-9">
                     <input type="text" id="Amount" placeholder="Amount" class="form-control">   
                    </div>
                </div>
                
                
                
                  <div class="form-group">
                    <label for="Discount" class="col-sm-3 control-label">Discount</label>
                    <div class="col-sm-9">
                     <input type="number" id="Discount" placeholder="Discount" class="form-control">   
                    </div>
                </div>
                
                
                
                 <div class="form-group">
                    <label for="GST" class="col-sm-3 control-label">GST</label>
                    <div class="col-sm-9">
                     <input type="number" id="GST" placeholder="GST" class="form-control">   
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="Final Amount" class="col-sm-3 control-label">Final Amount</label>
                    <div class="col-sm-9">
                     <input type="number" id="Final Amount" placeholder="Final Amount" class="form-control">   
                    </div>
                </div>
                
        
               
                <div class="form-group">
                
                <div class="col-sm-6">
                        <button type="submit" class="btn btn-primary btn-block">Save</button>
                    </div>
                    
                    <div class="col-sm-6">
                        <button type="submit" class="btn btn-primary btn-block">Print</button>
                    </div>
                </div>
            </form>
        </div> <!-- ./container -->
       	            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
                </section><!--/#portfolio-item-->
	
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