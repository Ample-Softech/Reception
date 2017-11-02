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
        	/* var cname = /^[A-Za-z]{2,50}$/; */
        	var cname =/^[a-zA-Z-. ]+$/;
        	
             if (ClientName.length === 0 || ClientName === "")
            {
                alert("Client Name is Required.");
                 ClientName.focus();
                return false; 
                var ClientName=document.Enquiry.ClientName.focus;
                
            }
            
            else if (!cname.test(ClientName))
            {
                alert("Enter Valid Client Name.");
                 ClientName.focus();
                return false; 
                var ClientName=document.Enquiry.ClientName.focus;
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
             
             alert("plz enter pincode");
         }
         else if (!pin.test(pincode))
         {
             
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
     	
	</script>
	<!-- Validation code End-------------------------------------------------------------------------------- -->    
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
                <p class="lead"></p>
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