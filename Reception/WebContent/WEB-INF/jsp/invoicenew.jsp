<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Invoice New</title>
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
    
    function functioncall()
    {
    	var amount = document.myform.Amount.value;
    	var discount=document.myform.Discount.value;
    	var gst;
    	var finalamount;
    	var damount;
    	damount=amount-discount;
    	gst=damount*15/100;
    	
    	finalamount=gst+damount;
    	document.getElementById("GST").value = gst;
    	document.getElementById("FinalAmount").value = finalamount;
    }
    
    function validateForm()
    {
         var Discount = document.myform.Discount.value;
         //alert("hi.....................");
         
         /* var disc = /^\d{0-9}$/; */
         var disc=/^[0-9_]{1,7}$/;
         
         //  validation for Number
         if (Discount.length === 0 || Discount === "")
         {
             //errors[errors.length] = " plz enter Discount amount.";
             alert("plz enter Discount amount");
         }

         else if (!disc.test(Discount))
         {
             //errors[errors.length] = " Enter Valid Discount.";
        	 alert("Enter Valid Discount.");
         }
        }
    </script>
    <%
	if(session.getAttribute("userLog")!="loggedIn") {
		response.sendRedirect("/Reception/loginpage");
	} 
%>

</head>
	  <body class="homepage">   
	<br>
<jsp:include page="head.jsp"></jsp:include>
		<jsp:include page="setup.jsp"></jsp:include>
		
				
	<section id="portfolio">
        <div class="container">
            <div class="center">
               <h2>Invoice</h2>
            </div>            
 			<div class="container">
             <form class="form-horizontal" role="form" action="/Reception/invoicesave"  name="myform">
                
                <div class="form-group">
                    <label for="from" class="col-sm-3 control-label">From</label>
                    <div class="col-sm-9">
                        <input type="text" id="from" placeholder="Ample Softech" value="Ample Softech" class="form-control" readonly="readonly">
                     
                    </div>
                </div>
                  <div class="form-group">
                    <label for="QuotationId" class="col-sm-3 control-label">Quotation Id.</label>
                    <div class="col-sm-9">
                         <input value="${ii.getQuotationId()}" name="QuotationId"  class="form-control" readonly="true"/> 
                        <%-- ${ii.getQuotationId() } --%>
                    </div>
                  </div>
                
                
                <div class="form-group">
                    <label for="ClientId" class="col-sm-3 control-label">Client Id</label>
                    <div class="col-sm-9">
                         <input value="${ii.getClientId()}" name="ClientId"  class="form-control" readonly="true"/>
                     
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="bill to" class="col-sm-3 control-label">Bill to</label>
                    <div class="col-sm-9">
                        <input id="bill to" name="ClientName" value="${ii.getClientName()}" class="form-control" readonly="readonly">
                     
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="Contact Number" class="col-sm-3 control-label">Contact Number</label>
                    <div class="col-sm-9">
                        <input name="ClientContact" value="${ii.getClientContact()}" id="Contact Number" class="form-control"  readonly="readonly">
                     
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <input name="ClientEmailId" value="${ii.getClientEmailId()}" id="email" placeholder="Email" class="form-control" readonly="readonly">
                     
                    </div>
                </div>
               
                  
                
                
                <div class="form-group">
                    <label for="Quotation Date" class="col-sm-3 control-label">Quotation Date</label>
                    <div class="col-sm-9">
                    <input  name="QuotationDate" value="${ii.getQuotationDate()}" class="form-control"  readonly="readonly"/>
                    
                        
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="Quotation Due Date" class="col-sm-3 control-label">Quotation Due Date</label>
                    <div class="col-sm-9">
                     <input value="${ii.getQuotationDueDate()}"  name="QuotationDueDate" class="form-control" readonly="readonly"/>
                       
                    </div>
                </div>
                
                
                
                
                
                <div class="form-group">
                    <label for="Description" class="col-sm-3 control-label">Description</label>
                    <div class="col-sm-9">
                     
                     <input value="${ii.getProjectDescription()}"  name="ProjectDescription" class="form-control" readonly="readonly"/>
                       
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="Amount" class="col-sm-3 control-label">Amount</label>
                    <div class="col-sm-9">
                     <input  type="text" value="${ii.getAmount()}" id="Amount" placeholder="Amount" name="Amount" class="form-control" readonly="readonly"/>   
                    </div>
                </div>
                
                
                
                  <div class="form-group">
                    <label for="Discount" class="col-sm-3 control-label">Discount</label>
                    <div class="col-sm-9">
                     <input type="text" id="Discount" placeholder="Discount" name="Discount"  class="form-control" autofocus>   
                    </div>
                </div>
                
                
                
                 <div class="form-group">
                    <label for="GST" class="col-sm-3 control-label">GST</label>
                    <div class="col-sm-9">
                     <input type="text" id="GST" placeholder="GST" name="GST" onfocus="functioncall();" class="form-control" required>   
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="FinalAmount" class="col-sm-3 control-label">Final Amount</label>
                    <div class="col-sm-9">
                     <input type="text" id="FinalAmount" placeholder="FinalAmount"  name="FinalAmount" class="form-control" required>   
                    </div>
                </div>
               
                <div class="form-group">        
                <div class="col-sm-6">
                        <input type="submit" class="btn btn-primary btn-block" onclick="validateForm();">
                    </div>
                    
                    <div class="col-sm-6">
                        <input formaction="/Reception/invoiceprint" onclick="validateForm();" type="submit" class="btn btn-primary btn-block" value="Print"  />
                    </div>
                </div>
            </form>
      </div> <!-- </container -->
</section><!--/#portfolio-item-->

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