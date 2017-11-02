<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Technology" %> 
<%@ page import="com.model.SourceOfInfo" %>
<%@ page import="java.util.*" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
	Dont Forget : ${thought} 
	<form action="test2">
	<input type="text" name="thoughtParam">
	<input type="submit" value="Submit">
	</form>
</div>
</body>
</html>