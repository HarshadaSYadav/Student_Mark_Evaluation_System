<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>


<%@include file="admin_dashboard_layout.jsp" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Admin dashboard</title>

<link rel="stylesheet" href="css/bootstrap.css" type="text/css">

<style type="text/css"><%@ include file="css/admindash.css" %></style>

<style type="text/css"><%@ include file="css/admin_dashboard_layout.css" %></style>

</head>

<body>

<br>

<br>


<form name="admindash" action="admindash" method="post">

			
			
	<div class="select-container"> 
			<label for="first-year">Year:</label> 
			<select id="first-year" class="select-element" name="year"> 
				<option  value="F.Y">F.Y</option>  
				<option value="S.Y">S.Y</option> 
				<option value="T.Y">T.Y</option> 
				<option value="B.tech">B.tech</option> 
			</select> 
	</div>
			
	<div class="submit-button text-center"> 
			<button type="submit" name="submit" value="Submit" class="btn btn-primary"> Submit </button> 
	</div>

</form>
</body>

</html>