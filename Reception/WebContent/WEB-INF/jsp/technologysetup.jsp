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
		<jsp:include page="head.jsp"></jsp:include>
		<jsp:include page="setup.jsp"></jsp:include>
		
		
	<script type="text/javascript">
	function check1()
	{ 
		var t2=document.form11.so11.value;
		 if (t2.length === 0 || t2 === "")
         {
             alert("Should not be blank.");
             document.getElementById("so11").focus();
              return false; 
         }
	}
	function check2()
	{ 
		var t22=document.form22.so22.value;
		 if (t22.length === 0 || t22 === "")
         {
             alert("Should not be blank.");
             document.getElementById("so22").focus();
              return false; 
         }
	}
	</script>
	<section>
	<div class="container" align="center">

	<h3>${msg }</h3>
		<c:set var="tech" value="${tech}"></c:set>
		<c:set var="addtech" value="${addtech}"></c:set>
		<c:choose>
			<c:when test="${tech=='yes'}">
				<form:form action="/Reception/updateTech" onsubmit="return check1();" class="form-horizontal" name="form11">
				<form:hidden path="TechnologyId"/>
				<div class=" col-md-8 col-md-offset-4">
					<div class="row">
						<div class="col-sm-8 col-md-offset-4 ">
							<div class="col-sm-4">
								<label for="ClientContact">update Technology</label>
							</div>
							<div class="col-sm-5">
								<form:input path="Technology" class="form-control input-sm" id="so11" name="so11"/>
							</div>
							<div class="col-sm-3">
								<input type="submit" value="Update" class="form-control btn btn-info input-sm">
							</div>
						</div>
					</div>
				</div>
				</form:form>
	 		</c:when>
	 
	 		<c:when test="${addtech=='yes'}">
				<form:form action="/Reception/AddTech" name="form22" onsubmit="return check2();">
					<%-- <form:input path="Technology" />
					<input type="submit" value="Add" class="btn btn-info">
					 --%>
					<div class=" col-md-6 col-md-offset-6">
					<div class="row">
						<div class="col-sm-8 col-md-offset-4">
						<div class="col-sm-2">
							<label for="">New Technology</label>
						</div>
						<div class="col-sm-8">
							<form:input path="Technology" name="so22" id="so22" class="form-control " />
						</div>
						<div class="col-sm-2">
							<input type="submit" value="Add" class="form-control btn btn-info input-sm">
						</div>
						</div>
					</div>
				</div>
				</form:form>
			 </c:when>
			<c:otherwise>
			</c:otherwise>
			</c:choose>
	
	<table  class="table table-sm table-striped table-bordered table-hover table-inverse">  
	<thead><h1>Technologies We Work On</h1></thead>
	<div align="right"><a href="/Reception/AddTechnology" class="btn btn-primary"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> New Technology</a></div>
	<tr><th>Technology ID</th><th>Technology</th><th>Edit</th><th>Delete</th></tr>  
	<c:forEach var="st" items="${list}">
	<tr>
	<td >${st.getTechnologyId() }</td>
	<td>${st.getTechnology() }</td>
	
	<td ><a href="/Reception/updatetechnology/${ st.getTechnologyId()}" class="btn btn-info"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></td>
	<td ><a href="/Reception/deleteTech/${ st.getTechnologyId()}" class="btn btn-danger " ><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a></td>
	</tr>
	</c:forEach>
	</table>
	</div>
	</section>
	</div>
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