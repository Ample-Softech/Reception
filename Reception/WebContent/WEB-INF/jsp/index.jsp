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
  
</head>
 <body class="homepage">
 <jsp:include page="head.jsp"></jsp:include>   
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
				<form  name="Enquiry" action="newenquiry1" >
					<div class="col-md-12 col-sm-12">
					
						<div class="form-group col-md-6 col-sm-6">
            				<label for="ClientName">Client Name*	</label>
            				<input type="text" name="ClientName" class="form-control input-sm" id="name" placeholder="" pattern="^[a-zA-Z\s]+$" required>
            				<!--onchange="ClientNameValidation();"  -->
        				</div>
        
       					 <div class="form-group col-md-6 col-sm-6">
            				<label for="ClientFirm">Firm Name (if applicable )	</label>
           		 		<input type="text" name="ClientFirm" class="form-control input-sm" id="name" placeholder="" pattern="^[a-zA-Z-0-9\s]+$">
        				</div>
        
       					 <div class="form-group col-md-6 col-sm-6">
            				<label for="ClientEmailId">Email*</label>
            				<input type="email" name="ClientEmailId" class="form-control input-sm" id="email" placeholder="" pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required>
        				</div>

       					 <div class="form-group col-md-6 col-sm-6">
       					     <label for="ClientContact">Mobile*</label>
                         <input type="text" name="ClientContact" class="form-control input-sm" id="mobile" placeholder="" pattern="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$" onchange="ClientContactValidation();" required>
        				</div>

						<div class="form-group col-md-6 col-sm-6">
	    				  	<label for="ClientAddress">Address*</label>
	      					<textarea name="ClientAddress" class="form-control input-sm" id="address" rows="3" required></textarea>
	   					</div>
	
						<div class="form-group col-md-6 col-sm-6">
            				<label for="ClientCity">City*</label>
            				<input type="text" name="ClientCity" class="form-control input-sm" id="city" placeholder="" pattern="^[a-zA-Z\s]+$" required>
        				</div>
	
						<div class="form-group col-md-6 col-sm-6">
            				<label for="ClientState">State*</label>
            				<input type="text" name="ClientState" class="form-control input-sm" id="state" placeholder="" pattern="^[a-zA-Z\s]+$" required>
        				</div>

						 <div class="form-group col-md-6 col-sm-6">
	    					  	<label for="EnquiryDescription">Enquiry Description*</label>
	      						<textarea name="EnquiryDescription" class="form-control input-sm" id="address" rows="3" required></textarea> 
	   					</div>
						<div class="form-group col-md-6 col-sm-6">
            				<label for="ClientCountry">Country*</label>
            				<input type="text" name="ClientCountry" class="form-control input-sm" id="country" placeholder="" pattern="^[a-zA-Z\s]+$" required>
       	 				</div>
        
       

						<div class="form-group col-md-6 col-sm-6">
            				<label for="pincode">Pincode</label>
            				<input type="text" name="pincode" class="form-control input-sm" id="pincode" placeholder="" pattern=^[1-9][0-9]{5}$ required>
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