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
</head>
	  <body class="homepage">   
		<jsp:include page="head.jsp"></jsp:include>
		<jsp:include page="setup.jsp"></jsp:include>
		
		
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
</section>
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