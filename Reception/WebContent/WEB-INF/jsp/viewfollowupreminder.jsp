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
    <script src="js/bootstrap.min.js"></script>
	<%
	if(session.getAttribute("userLog")!="loggedIn") {
		response.sendRedirect("/Reception/loginpage");
	} 
%>
</head>
 <body class="homepage">   
	<jsp:include page="head.jsp"></jsp:include>
		<jsp:include page="setup.jsp"></jsp:include>
			     

	<!-- ---------------------------------------------------------------------------------------------- -->
	<section>
	
	<div class="container" align="center">
	<c:set var="cond" value="${viewe }"></c:set>
	<c:choose>
	<c:when test="${cond=='yes'}">
		<table class="table table-striped table-bordered table-hover table-condensed table-sm">  	
		<thead class="table table-dark"><tr><th>Enquiry ID</th><th>Enquiry Description</th><th>Technology</th>
		<th>Source</th></tr></thead>  
		<tr>
		<td>${e.getEnquiryId() }</td>
		<td>${e.getEnquiryDescription() }</td>
		<td>${e.getTechnologyId() }</td>
		<td>${e.getSourceId()}</td>
		</tr>
		</table>
	 </c:when>
	 
	<c:otherwise>
		</c:otherwise>
	</c:choose>
	
	<h1>Follow Up Reminders</h1>
	<table class="table table-striped table-bordered table-hover table-condensed table-sm">  	
	<thead class="table table-dark"><tr><th>Follow up Id</th><th>Enquiry </th><th>Client Name </th>
	<th>Enquiry Description</th><th>Status</th><th>Followup</th></del></tr></thead>  
	<c:forEach var="st" items="${list}">
	<tr>
	<td>${st.getFollowUpId() }</td>
	<td><a href="/Reception/viewenquiry/${st.getEnquiryId() }">View Enquiry</a></td>
	<td>${st.getClientName() }</td>
	<td>${st.getEnquiryDescription() }</td>
	<td>Open</td>
	<td><a href="/Reception/followupreminder2/${ st.getFollowUpId()}"><span class="glyphicon glyphicon-pencil"></span>  </a></td>
	</tr>
	</c:forEach>
	</table>
	
	
	<!-----------------------------------------------------------------------  -->
	
	<%  String pn=request.getAttribute("pn").toString();  
		int p=Integer.parseInt(pn);
      	String pa=request.getAttribute("pageid").toString();
      	int pageid=Integer.parseInt(pa);
	%>
	<!--Bottom Table UI-->
    <div class="d-flex justify-content-center">
	<!--Pagination -->
        <nav class="my-4 pt-2">
            <ul class="pagination pagination-circle pg-purple mb-0">
                <!--First-->
                <%if(pageid==1){%>
                <li class="page-item disabled  d-none d-md-block"><a  class="page-link">First</a></li>
                <%}else{ %>
                <li class="page-item d-none d-md-block"><a href="/Reception/viewfollowupreminder/1" class="page-link">First</a></li>
                <%} %>
                <!--Arrow left-->
                <%if(pageid==1){%>
                	<li class="page-item disabled">
                    	<a class="page-link" aria-label="Previous">
                    		<span aria-hidden="true">&laquo;</span>
                    		<span class="sr-only">Previous</span>
                		</a>
                	</li>   
                <%}else{ %>
                	<li class="page-item">
                    	<a href="/Reception/viewfollowupreminder/<%=pageid-1 %>" class="page-link" aria-label="Previous">
                    		<span aria-hidden="true">&laquo;</span>
                    		<span class="sr-only">Previous</span>
                		</a>
                </li>
                <%} %>                
				<% int i;
					for(i=1;i<=p;i++)
				{
				%>
                <li> <!-- class="page-item active" --><a href="/Reception/viewfollowupreminder/<%out.print(i); %>" class="page-link"><%= i %></a></li>
                <%} %>
                <!--Arrow right-->
                <%if(pageid==p){ %>
                <li class="page-item disabled">
                    <a class="page-link " aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
                <%}else{ %>
                <li class="page-item">
                    <a href="/Reception/viewfollowupreminder/<%=pageid+1 %>" class="page-link" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
                <%}%>
                </li>
                <!--First-->
                <%if(pageid==p){ %>
                <li class="page-item disabled d-none d-md-block"><a class="page-link">Last</a></li>
                <%}else{ %>
                <li class="page-item d-none d-md-block"><a href="/Reception/viewfollowupreminder/<%=p%>" class="page-link">Last</a></li>
                <%}%>
                </li>
                <!--First-->
            </ul>
        </nav>
        <!--/Pagination -->
        </div>
    <!--Bottom Table UI-->
	</div>	
	</section>
	
	<!-- ---------------------------------------------------------------------------------------------- -->
	
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