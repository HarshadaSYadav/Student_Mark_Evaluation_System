<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="admin_dashboard_layout.jsp" %>
<%@ page import= "java.io.*" %>
<%@ page import= "java.sql.*" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Add Student</title>

<link rel="stylesheet" href="css/bootstrap.css" type="text/css">

<style type="text/css"><%@ include file="css/addstudent_admin.css" %></style>

<style type="text/css"><%@ include file="css/admin_dashboard_layout.css" %></style>


</head>

<body>

<br>

<br>

<br>

<div class="container1">

<h1>Student Information</h1>


<%
	Connection cn = null;
	Statement st = null;
	Class.forName("com.mysql.jdbc.Driver");
    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_mark_evaluation_system","root","root");
    String sql = "select * from student_info where CLASS= '"+session.getAttribute("year")+"'  ";
    st=cn.createStatement();
    ResultSet rs=st.executeQuery(sql);

    while(rs.next())
    {
    	
%>
			

	<form name="view_student" action="view_student" method="post">
	
		<div class="form-group"> 
			<label for="id"><b>Student ID.:</b></label><br> 
			<input type="text" name="id" id="id" value="<%= rs.getString("STUDENT_ID") %>"> 
		</div>
	
		<div class="form-group"> 
			<label for="roll"><b>Roll NO.:</b></label><br> 
			<input type="text" name="roll" id="roll" value="<%= rs.getString("ROLL_NO") %>"> 
		</div>
	
		<div class="form-group"> 
			<label for="PRN"><b>PRN:</b></label><br> 
			<input type="text" name="PRN" id="PRN" value="<%= rs.getString("PRN_NO") %>"> 
		</div>
	
		<div class="form-group"> 
			<label for="student_name"><b>Student Name:</b></label><br> 
			<input type="text" name="student_name" id="student_name" value="<%= rs.getString("STUDENT_NAME") %>"> 
		</div>
	
		<div class="form-group"> 
			<label for="gender"><b>Gender:</b></label><br> 
			<input name="gender" id="gender" value="<%= rs.getString("GENDER") %>"> 
		</div>
	
		<div class="form-group">
		
			<label for="dept"><b>Department:</b></label><br> 
			<input name="dept" id="dept" value="<%= rs.getString("DEPARTMENT") %>"> 
		</div>
	
		<div class="form-group"> 
			<label for="year"><b>Class:</b></label><br> 
			<input name="year" id="year" value="<%= rs.getString("CLASS") %>"> 
		</div>
	
		<div class="form-group"> 
			<label for="sem"><b>Semester:</b></label><br> 
			<input name="sem" id="sem" value="<%= rs.getString("SEMESTER") %>"> 
		</div>
	
		<div class="form-group"> 
			<label for="birthday"><b>Birthday:</b></label><br> 
			<input type="date" id="birthday" name="birthday" value="<%= rs.getString("BIRTHDATE") %>"> 
		</div>
	
		<div class="form-group"> 
			<label for="phone_no"><b>Phone Number:</b></label><br> 
			<input type="text" name="phone_no" id="phone_no" value="<%= rs.getString("PHONE_NO") %>"> 
		</div>
	
		<div class="form-group"> 
			<label for="email"><b>Email ID:</b></label><br> 
			<input type="text" name="email" id="email" value="<%= rs.getString("EMAIL_ID") %>"> 
		</div>
	
		<div class="form-group"> 
			<label for="address"><b>Address:</b></label><br> 
			<input type="text" name="address" id="address" value="<%= rs.getString("ADDRESS") %>"> 
		</div>
	 
		<div class="form-group" > 
			<button type="submit" name="submit" value="Add">Add</button>
			<button type="submit" name="submit" value="Update">Update</button> 
			<button type="submit" name="submit" value="Delete">Delete</button> 
		</div>
	
	
	</form>
 <% } %>
 
</div>


</body>

</html>