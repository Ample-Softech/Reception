<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.model.Quotation"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	if(session.getAttribute("userLog")!="loggedIn") {
		response.sendRedirect("/Reception/loginpage");
	} 
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quotation new</title>
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
    
    <script type="text/javascript">
    function validateForm()
    {
        //  validation for Amount

         var Amount = document.quotation.Amount.value;
         var disc=/^[0-9_]{1,7}$/;
         
         if (Amount.length === 0 || Amount === "")
         {
             alert("plz enter Amount");
         }

         else if (!disc.test(Amount))
         {
           alert("Enter Valid Amount.");
         }
    }
    </script>
</head>
<body class="homepage">   
	<jsp:include page="head.jsp"></jsp:include>
		<jsp:include page="setup.jsp"></jsp:include>
		
		<section id="blog" class="container">       	
       	<!-- <div class="container"> -->
            <form:form class="form-horizontal" role="form" action="/Reception/quotesave"  name="quotation"  >
                <h2><b>Quotation</b></h2>
                 
                 
                <div class="form-group">
                    <label for="from" class="col-sm-3 control-label">From</label>
                    <div class="col-sm-9">
                        <input type="text" id="from" placeholder="Ample Softech Pvt.ltd" value="Ample Softech System" name="AmpleSoftech"  class="form-control" readonly="readonly">
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="enquiryId" class="col-sm-3 control-label">Enquiry ID</label>
                    <div class="col-sm-9">
                        <form:input path="EnquiryId" name="EnquiryId" id="from"  class="form-control" readonly="true"/>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="clientId" class="col-sm-3 control-label">Client ID</label>
                    <div class="col-sm-9">
                        <form:input path="ClientId" id="from" name="ClientId"  class="form-control" readonly="true"/>
                        
                    </div>
                </div>
                
                
                
                <div class="form-group">
                    <label for="bill to" class="col-sm-3 control-label">Bill to</label>
                    <div class="col-sm-9">
                        <form:input path="clientName" id="bill to"  name="ClientName" value="" class="form-control" readonly="true"/>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <form:input type="email" id="email" path="clientEmailId"  name="ClientEmailId" value="" class="form-control" readonly="true"/>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="contact no" class="col-sm-3 control-label">Contact no.</label>
                    <div class="col-sm-9">
                         <form:input path="clientContact" id="contact"  name="clientContact"  class="form-control" readonly="true"/>
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="project discription" class="col-sm-3 control-label">Project Description</label>
                    <div class="col-sm-9">
                       <textarea class="form-control" id="project description" name="ProjectDescription" required autofocus ></textarea>
                    </div>
                </div>
                

					
                <div class="form-group">
                    <label for="quotationdate" class="col-sm-3 control-label">Quotation date</label>
                    <div class="col-sm-9">
                        <input type="date" id="quotationdate" name="QuotationDate" class="form-control" required>
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="quotationduedate" class="col-sm-3 control-label">Quotation due date</label>
                    <div class="col-sm-9">
                        <input type="date" id="quotationduedate" name="QuotationDueDate" class="form-control" required>
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="amount" class="col-sm-3 control-label">Amount</label>
                    <div class="col-sm-9">
                        <input type="text" id="amount" placeholder="amount" name="Amount" class="form-control">
                    </div>
                </div>
                
                 <div class="form-group">
                    <div class="col-sm-6" >
                    <button type="submit" class="btn btn-primary btn-block" onclick="validateForm();">Save</button>
                    </div>
                   
                    <div class="col-sm-6">
                        <input formaction="/Reception/quoteprint" onclick="validateForm();" type="submit" class="btn btn-primary btn-block" value="Print"  />
                    </div>
                
                </div>
                
                </div>
           
                
                
            </form:form> <!-- /form -->
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