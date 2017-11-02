<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Technology" %> 
<%@ page import="com.model.SourceOfInfo" %>
<%@ page import="java.util.*" %>   

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
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
         function ClientNameValidation()
         {
        	//  validation for ClientName---------------------------
        	var ClientName=document.Enquiry.ClientName.value;
        	var cname = /^[A-Za-z]{2,50}$/;
        	
             if (ClientName.length === 0 || ClientName === "")
            {
                alert("Client Name is Required.");
                ClientName.focus();
                return false;
                
            }
            else if (!cname.test(ClientName))
            {
                alert("Enter Valid Client Name.");
                ClientName.focus();
                return false;
            }
         }
    
         
         
         function ClientFirmValidation()
         {
     //  validation for Firm Name---------------------------
     
     		var ClientFirm=document.Enquiry.ClientFirm.value;
     		var firmname = /^[A-Za-z0-9]{2,200}$/;
     		
           if (ClientFirm.length === 0 || ClientFirm === "")
         {
            alert("Client Firm is Required.");
         }

         else if (!firmname.test(ClientFirm))
         {
             alert("Enter Valid Client Firm.");
         }
         }
         
         
         
         function ClientEmailIdValidation()
         {
      //  validation for Email---------------------------------
      
      	var ClientEmailId=document.Enquiry.ClientEmailId.value;
      	var email = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
      	
         if (ClientEmailId.length === 0 || ClientEmailId === "")
         {
             alert("Email  is Required.");
         }

         else if (!email.test(ClientEmailId))
         {
             alert(" Enter Valid Email.");
         }
        }
	
     
         function ClientContactValidation()
         {
    //  validation for Mobile number---------------------------
    	var ClientContact=document.Enquiry.ClientContact.value;
    	var contact = /^\d{10}$/;
    	
         if (ClientContact.length === 0 || ClientContact === "")
         {
            alert("Mobile number is Required.");
         }

         else if (!contact.test(ClientContact))
         {
             alert("Enter Valid Mobile number.");
         }
         }

     
     
         function ClientCityValidation()
         {
      //  validation for City---------------------------------
      
      		var ClientCity=document.Enquiry.ClientCity.value;
      		var city = /^[A-Za-z]{3,50}$/;	
         if (ClientCity.length === 0 || ClientCity === "")
         {
             alert("City  is Required.");
         }

         else if (!city.test(ClientCity))
         {
             alert(" Enter Valid City.");
         }
         }
		
     	
      
     
         function ClientStateValidation()
         {
       //  validation for State---------------------------------
       
       		var ClientState=document.Enquiry.ClientState.value;
       		var state = /^[A-Za-z]{3,50}$/;
         if (ClientState.length === 0 || ClientState === "")
         {
             alert("State  is Required.");
         }

         else if (!state.test(ClientState))
         {
             alert(" Enter Valid State.");
         }
         }
         
       
       function ClientCountryValidation()
         {
        //  validation for Country---------------------------------
        
        	var ClientCountry=document.Enquiry.ClientCountry.value;
        	var country = /^[A-Za-z]{3,50}$/;
         if (ClientCountry.length === 0 || ClientCountry === "")
         {
             alert("Country  is Required.");
         }

         else if (!country.test(ClientCountry))
         {
             alert(" Enter Valid Country.");
         }
         }

         function pincodeValidation()
         {
          //  validation for pincode------------------------------------
          
          	var pincode=document.Enquiry.pincode.value;
          	var pin = /^[0-9_]{6}$/;
         if (pincode.length === 0 || pincode === "")
         {
             //errors[errors.length] = " plz enter Discount amount.";
             alert("plz enter pincode");
         }
         else if (!pin.test(pincode))
         {
             //errors[errors.length] = " Enter Valid Discount.";
        	 alert("Enter Valid pincode.");
         } 
         } 
          
          
          
         function TechnologyIdValidation()
         {
     //  validation for Technology------------------------------------
     
     	var TechnologyId=document.Enquiry.TechnologyId.value;
         
         if (TechnologyId.length === 0 || TechnologyId === "")
         {
             alert("plz select TechnologyId");
         }
         }
     
     
         function SourceIdValidation()
         {
    //  validation for Source id------------------------------------
        	var SourceId=document.Enquiry.SourceId.value;
    
    	if (SourceId.length === 0 || SourceId === "")
         {
             alert("plz enter Source Id");
         }
	}
         
	//Validation code End-------------------------------------------------------------------------------- 	
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
                        <%if(session.getAttribute("userLog")=="loggedIn") {%>
                        <li><a href="/Reception/followup">Follow up</a></li><%} %>
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
	

<br>
 <!-------------------------------------Form Start------------------------------------------------->
	 <section id="feature" >
        <div class="container">
           <div class="center wow fadeInDown">
                <p class="lead">Welcome to Ample Softech</p>
                 <h2>Enquiry Form</h2>
            </div>

            <div class="row">
                <div class="features">
                   <div class="container">
           				
        		<div class="panel panel-primary" >
					<div class="panel-heading">
        				<h3 class="panel-title">Enquiry Form</h3>
        				<h1>${msg}</h1>
					</div>
				</div>
			</div>
			<div class="panel-body">
			<!--action="newenquiry"  -->
				<form  name="Enquiry" action="newenquiry" >
					<div class="col-md-12 col-sm-12">

						<div class="form-group col-md-6 col-sm-6">
            				<label for="ClientName">Client Name*	</label>
            				<input type="text" name="ClientName" class="form-control input-sm" id="name" placeholder=""  onchange="ClientNameValidation();" required>
            				<!-- onclick="validateForm();"  -->
        				</div>
        
       					 <div class="form-group col-md-6 col-sm-6">
            				<label for="ClientFirm">Firm Name (if applicable )	</label>
           		 			<input type="text" name="ClientFirm" class="form-control input-sm" id="name" placeholder="" onchange="ClientFirmValidation();" required>
        				</div>
        
       					 <div class="form-group col-md-6 col-sm-6">
            				<label for="ClientEmailId">Email*</label>
            				<input type="email" name="ClientEmailId" class="form-control input-sm" id="email" placeholder="" onchange="ClientEmailIdValidation();" required>
        				</div>

       					 <div class="form-group col-md-6 col-sm-6">
       					     <label for="ClientContact">Mobile*</label>
        				   	 <input type="text" name="ClientContact" class="form-control input-sm" id="mobile" placeholder="" onchange="ClientContactValidation();" required>
        				</div>

						<div class="form-group col-md-6 col-sm-6">
	    				  	<label for="ClientAddress">Address*</label>
	      					<textarea name="ClientAddress" class="form-control input-sm" id="address" rows="3" required></textarea>
	   					</div>
	
						<div class="form-group col-md-6 col-sm-6">
            				<label for="ClientCity">City*</label>
            				<input type="text" name="ClientCity" class="form-control input-sm" id="city" placeholder="" onchange="ClientCityValidation();" required>
        				</div>
	
						<div class="form-group col-md-6 col-sm-6">
            				<label for="ClientState">State*</label>
            				<input type="text" name="ClientState" class="form-control input-sm" id="state" placeholder="" onchange="ClientStateValidation();" required>
        				</div>

						 <div class="form-group col-md-6 col-sm-6">
	    					  	<label for="EnquiryDescription">Enquiry Description*</label>
	      						<textarea name="EnquiryDescription" class="form-control input-sm" id="address" rows="3" required></textarea> 
	   					</div>
						<div class="form-group col-md-6 col-sm-6">
            				<label for="ClientCountry">Country*</label>
            				<input type="text" name="ClientCountry" class="form-control input-sm" id="country" placeholder="" onchange="ClientCountryValidation();" required>
       	 				</div>
        
       

						<div class="form-group col-md-6 col-sm-6">
            				<label for="pincode">Pincode</label>
            				<input type="text" name="pincode" class="form-control input-sm" id="pincode" placeholder="" onchange="pincodeValidation();" required>
        				</div>
        
        

						<div class = "form-group col-md-6 col-sm-6">
	    					  <label for="TechnologyId">Technology</label>
								<span class="help-block">Please choose the technology</span>
     
	    							<select name="TechnologyId" class="form-control input-sm" id="years" onchange="TechnologyIdValidation();" required>
	   							 	<option 
	   							 	>Select Technology </option> 
	    								<c:forEach items="${tlist}" var="l">	
										<option value="${l.getTechnologyId() }">${l.getTechnology() }</option>
		 								</c:forEach>
	     	 						</select>
						</div>

						<div class = "form-group col-md-6 col-sm-6">
	      					<label for="SourceId">Source Of Information</label>
	      						<span class="help-block">Please select the source of information</span>	      
	      						<select name="SourceId" class="form-control input-sm" id="months" onchange="SourceIdValidation();" required>
									<option value="">Source Of Information</option>
		
										<c:forEach items="${slist}" var="l">	
											<option value="${l.getSourceId() }">${l.getSourceOfInfo() }</option>
		 								</c:forEach>
		 						</select>
						</div>
				</div>

				<div class="col-md-12 col-sm-12">
					<div class="form-group col-md-3 col-sm-3 pull-right" >
						<input type="submit" class="btn btn-primary" value="Submit" />
					</div>
				</div>
			</form>
	</div>
	</div>
</section>

<!-----------------------------------------------Form  End------------------------------------------>    

</div><!--/#feature-->
				
	 <section id="recent-works">
        <div class="container">
            <div class="center wow fadeInDown">
                <h2>Recent Works</h2>
                <p class="lead">Works</p>
            </div>

            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/portfolio/recent/item1.png" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">Business theme</a> </h3>
                                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                <a class="preview" href="images/portfolio/full/item1.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                            </div> 
                        </div>
                    </div>
                </div>   

                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/portfolio/recent/item2.png" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">Business theme</a></h3>
                                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                <a class="preview" href="images/portfolio/full/item2.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                            </div> 
                        </div>
                    </div>
                </div> 

                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/portfolio/recent/item3.png" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">Business theme </a></h3>
                                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                <a class="preview" href="images/portfolio/full/item3.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                            </div> 
                        </div>
                    </div>
                </div>   

                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/portfolio/recent/item4.png" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">MultiPurpose theme </a></h3>
                                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                <a class="preview" href="images/portfolio/full/item4.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                            </div> 
                        </div>
                    </div>
                </div>   
                
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/portfolio/recent/item5.png" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">Business theme</a></h3>
                                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                <a class="preview" href="images/portfolio/full/item5.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                            </div> 
                        </div>
                    </div>
                </div>   

                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/portfolio/recent/item6.png" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">Business theme </a></h3>
                                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                <a class="preview" href="images/portfolio/full/item6.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                            </div> 
                        </div>
                    </div>
                </div> 

                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/portfolio/recent/item7.png" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">Business theme </a></h3>
                                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                <a class="preview" href="images/portfolio/full/item7.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                            </div> 
                        </div>
                    </div>
                </div>   

                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/portfolio/recent/item8.png" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">Business theme </a></h3>
                                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                <a class="preview" href="images/portfolio/full/item8.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                            </div> 
                        </div>
                    </div>
                </div>   
            </div><!--/.row-->
        </div><!--/.container-->
  </section><!--/#recent-works-->	
	
    <section id="middle">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 wow fadeInDown">
                    <div class="skill">
                        <h2>Our Skills</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

                        <div class="progress-wrap">
                            <h3>Graphic Design</h3>
                            <div class="progress">
                              <div class="progress-bar  color1" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                                <span class="bar-width">85%</span>
                              </div>
                            </div>
                        </div>

                        <div class="progress-wrap">
                            <h3>HTML</h3>
                            <div class="progress">
                              <div class="progress-bar color2" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 95%">
                               <span class="bar-width">95%</span>
                              </div>
                            </div>
                        </div>

                        <div class="progress-wrap">
                            <h3>CSS</h3>
                            <div class="progress">
                              <div class="progress-bar color3" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                <span class="bar-width">80%</span>
                              </div>
                            </div>
                        </div>

                        <div class="progress-wrap">
                            <h3>Wordpress</h3>
                            <div class="progress">
                              <div class="progress-bar color4" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                                <span class="bar-width">90%</span>
                              </div>
                            </div>
                        </div>
                    </div>

                </div><!--/.col-sm-6-->

                <div class="col-sm-6 wow fadeInDown">
                    <div class="accordion">
                        <h2>Why People like us?</h2>
                        <div class="panel-group" id="accordion1">
                          <div class="panel panel-default">
                            <div class="panel-heading active">
                              <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1">
                                  Lorem ipsum dolor sit amet
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                            </div>

                            <div id="collapseOne1" class="panel-collapse collapse in">
                              <div class="panel-body">
                                  <div class="media accordion-inner">
                                        <div class="pull-left">
                                            <img class="img-responsive" src="images/accordion1.png">
                                        </div>
                                        <div class="media-body">
                                             <h4>Adipisicing elit</h4>
                                             <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>
                                        </div>
                                  </div>
                              </div>
                            </div>
                          </div>

                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo1">
                                  Lorem ipsum dolor sit amet
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                            </div>
                            <div id="collapseTwo1" class="panel-collapse collapse">
                              <div class="panel-body">
                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.
                              </div>
                            </div>
                          </div>

                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseThree1">
                                  Lorem ipsum dolor sit amet
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                            </div>
                            <div id="collapseThree1" class="panel-collapse collapse">
                              <div class="panel-body">
                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.
                              </div>
                            </div>
                          </div>

                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseFour1">
                                  Lorem ipsum dolor sit amet
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                            </div>
                            <div id="collapseFour1" class="panel-collapse collapse">
                              <div class="panel-body">
                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.
                              </div>
                            </div>
                          </div>
                        </div><!--/#accordion1-->
                    </div>
                </div>

            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#middle-->
	
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