<%@page import="javax.persistence.criteria.CriteriaBuilder.In"%>
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
	<%
	if(session.getAttribute("userLog")!="loggedIn") {
		response.sendRedirect("/Reception/loginpage");
	} 
%>

<script type="text/javascript">
	 function search()
	{
		 var v=document.forms["mytech"].TechnologyId.value;
		 document.forms["mytech"].submit();
	}
	 
	 function searchsource()
		{
			 var v2=document.forms["mysource"].SourceId.value;
			 document.forms["mysource"].submit();
		}
	</script>
	
	
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
                    <a class="navbar-brand" href="index">AmpleSoftech</a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/Reception/index">Home</a></li>
                        <li><a href="/Reception/followup">Follow up</a></li>
                        <li><a href="/Reception/about-us.html">About Us</a></li>
                        <li><a href="/Reception/services.html">Services</a></li>
                        <%if(session.getAttribute("userLog")=="loggedIn") {%>
						<li><a href="/Reception/logout">Logout</a></li><%} else{%>
                        <li><a href="/Reception/loginpage">Login</a></li><%} %>                                                
                                           
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->
		<br>

		
<!--------------------------------------Body --------------------------------------------------->		
	<section class="homepage">	
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Setups
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
        	 <li><a href="/Reception/technologysetup">Technology</a></li>
     		<li><a href="/Reception/sourceofinfosetup">Source of Information</a></li>        
     	</ul>
      </li>
		<li class="active"><a href="/Reception/viewfollowupreminder/1">Follow up Reminder</a></li>
		<li><a href="/Reception/viewfollowup/1">Follow up View</a></li> 
    </ul>
  </div>
</nav>	     
</section><!--/#middle-->
	     

	<!-- ---------------------------------------------------------------------------------------------- -->
	<section>
	<div align="center" class="">
	<h1>${msg }</h1>
	<h1>${err }</h1>
	
			<div class="col-md-8 col-md-offset-4">	
				
				<form name="mytech" action="/Reception/viewfollowupbytech">
						<div class="form-group col-md-4 col-sm-6" name="selecttech">
	    					  <!-- <label for="TechnologyId">Technology</label> -->
	    							<select name="TechnologyId" onchange="search()" class="form-control input-sm" id="TechnologyId" >
	   							 	<option>Select Technology </option> 
	    								<c:forEach items="${tlist}" var="l">	
										<option value="${l.getTechnologyId() }" >${l.getTechnology() }</option>
		 								</c:forEach>
	     	 						</select>
						</div>
				</form>
				<form name="mysource" action="/Reception/viewfollowupbysource">
						<div class = "form-group col-md-4 col-sm-6">
	      					<!-- <label for="SourceId">Source</label> -->	      
	      						<select name="SourceId" onchange="searchsource()" class="form-control input-sm" id="SourceId" required onclick="searchbytech">
									<option>Source Of Information</option>
		
										<c:forEach items="${slist}" var="l">	
											<option value="${l.getSourceId() }">${l.getSourceOfInfo() }</option>
		 								</c:forEach>
		 						</select>
						</div>
				</form>
				
				<div class="form-group col-md-4 ">
				<form action="/Reception/searchfollowup" method="post">
					<div class="col-md-10">
							<input type="text" class="form-control input-sm" placeholder="Search for client name" name="ClientName" required>
					</div>
					<div class="col-md-2">
						 <button type="submit" class="btn btn-primary ">
          					<span class="glyphicon glyphicon-search"></span>  
        				</button>
					</div>
				</form>		
			</div>
			
			</div>
	<table class="table table-striped table-bordered table-hover   table-condensed ">  
	<thead ><h1>View Followups</h1></thead>
	
	<tr><th>No.</th><!-- <th>Follow up Id</th><th>Enq ID</th> --><th>Name </th><th>Contact</th><th>Technology</th>
	<th>mode</th><th>Last Followup </th><th>Next Followup</th><th>Response</th><th>Status</th><th>Entry By</th>
	<th>Mail</th><th>Quote</th><th height="3px">Invoice</th></tr>  
	<c:forEach var="st" items="${list}">
	<tr>
	
	<td>${st.getReminderId()}</td>
	<%-- <td>${st.getFollowUpId()}</td>
	<td>${st.getEnquiryId() }</td> --%>
	<td>${st.getClientName() }</td>
	<td>${st.getClientContact() }</td>
	<td>${st.getTechnology()}</td>
	<td>${st.getFollowUpMode()}</td>
	<td>${st.getFollowUpDate()}</td>
	<td>${st.getNextFollowUpDate()}</td>
	<td>${st.getResponse()}</td>
	<td>${st.getStatus()}</td>
	<td>${st.getEntryBy()}</td>
	
	<td><a href="/Reception/mail/${st.getFollowUpId()}"><span class="glyphicon glyphicon-envelope"></span></a></td>
	<td><a href="/Reception/quote/${st.getFollowUpId() }"><span class="glyphicon glyphicon-send"></span></a></td>
	<td><a href="/Reception/port/${st.getClientId() }"><span class="glyphicon glyphicon-send"></span></a></td>
	<%-- <td><a href="/Reception/forminvoice/${ st.getClientId()}">Invoice</a></td> --%>
	</tr>
	</c:forEach>
	</table>
	
	
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
                <li class="page-item <%-- <%if(pageid==1) %> --%>disabled  d-none d-md-block"><a  class="page-link">First</a></li>
                <%}else{ %>
                <li class="page-item d-none d-md-block"><a href="/Reception/viewfollowup/1" class="page-link">First</a></li>
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
                    	<a href="/Reception/viewfollowup/<%=pageid-1 %>" class="page-link" aria-label="Previous">
                    		<span aria-hidden="true">&laquo;</span>
                    		<span class="sr-only">Previous</span>
                		</a>
                </li>
                <%} %>                
				<% int i;
					for(i=1;i<=p;i++)
				{
				%>
                <li> <!-- class="page-item active" --><a href="/Reception/viewfollowup/<%out.print(i); %>" class="page-link"><%= i %></a></li>
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
                    <a href="/Reception/viewfollowup/<%=pageid+1 %>" class="page-link" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
                <%}%>
                </li>
                <!--First-->
                <%if(pageid==p){ %>
                <li class="page-item disabled d-none d-md-block"><a class="page-link">Last</a></li>
                <%}else{ %>
                <li class="page-item d-none d-md-block"><a href="/Reception/viewfollowup/<%=p%>" class="page-link">Last</a></li>
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