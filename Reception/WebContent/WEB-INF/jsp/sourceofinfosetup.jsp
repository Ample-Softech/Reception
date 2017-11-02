<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%
	if(session.getAttribute("userLog")!="loggedIn") {
		response.sendRedirect("/Reception/loginpage");
	} 
%>
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
                        <li class="active"><a href="index">Home</a></li>
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
<section>		
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
	</section>

	
	<section>
	<div class="container" align="center">
	<h3>${msg }</h3>
	<table class="table table-striped table-bordered table-hover table-inverse" >
	<c:set var="source" value="${source}"></c:set>
	<c:set var="addsource" value="${addsource}"></c:set>
	<c:choose>
	<c:when test="${sourceedit=='yes'}">
		<form:form action="/Reception/updateSource" onsubmit="checkit()" name="form1" >
			<form:hidden path="SourceId" />
			<form:input path="SourceOfInfo" id="source"/>
			<input type="submit" value="Update" class="btn btn-info">
		</form:form>
	 </c:when>
	 
	 <c:when test="${addsource=='yes'}">
		<form:form action="/Reception/AddSource">
			<form:input path="SourceOfInfo" />
			<input type="submit" value="Add" class="btn btn-info">
		</form:form>
	
	 </c:when>
	<c:otherwise>
		</c:otherwise>
	</c:choose>
	  
	<thead><h1>Source Of Ads</h1></thead>
	<div align="right"><a href="/Reception/addSourceOfInfo" class="btn btn-success">Add New Source</a></div>
	<tr><th>Source ID</th><th>Source</th></tr>  
	<c:forEach var="st" items="${list}">
	<tr>
	<td>${st.getSourceId() }</td>
	<td>${st.getSourceOfInfo() }</td>
	
	<td><a href="/Reception/updateSourceOfInfo/${ st.getSourceId()}" class="btn btn-info">Edit</a></td>
	<td><a href="/Reception/deleteSourceOfInfo/${ st.getSourceId()}" class="btn btn-danger">Delete</a></td>
	</tr>
	</c:forEach>
	</table>
	
	</div>
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