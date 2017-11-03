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
	 
	 function checkit() {
		
	}
</script>

</head>
<body class="homepage">   
	<jsp:include page="head.jsp"></jsp:include>
	<!--------------------------------------Body --------------------------------------------------->		
	<jsp:include page="setup.jsp"></jsp:include>
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
                        <select name="Needed" onchange="search()" class="form-control input-md" id="Needed" required>
						<option>Need to remind?</option>
						<option value="y">Yes</option>
						<option value="n">No</option>
						</select>
                    </div>
                </div>
                
                 <div class="form-group">
                    <label for="Response" class="col-sm-5 control-label">Response</label>
                    <div class="col-sm-7">
                        <input type="text" name="Response" id="Response" placeholder="Response" class="form-control input-md" required>
                    </div>
                </div>
               
                <div class="form-group">
                    <label for="NextFollowUpDate" class="col-sm-5 control-label">Next Follow Up Date</label>
                    <div class="col-sm-7">
                    	
                    	<input type="datetime-local"  name="NextFollowUpDate" id="NextFollowUpDate"   class="form-control input-md" required>
                        <%-- <form:input path="NextFollowUpDate" name="NextFollowUpDate" id="NextFollowUpDate"   class="form-control input-md" /> --%>
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