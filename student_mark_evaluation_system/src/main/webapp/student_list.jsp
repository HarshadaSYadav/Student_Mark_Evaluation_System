<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import= "java.io.*" %>
<%@ page import= "java.sql.*" %>

<%@include file="admin_dashboard_layout.jsp" %>

<!DOCTYPE html>

<html>

<head> 
	<meta charset="UTF-8"> 
	<title>Student list</title> 
	<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
	<link rel="stylesheet" href="css/font-awesome-4.7.0/css/font-awesome.css" type="text/css"> 
	<link rel="stylesheet" href="css/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css">
	<style type="text/css"><%@ include file="css/student_list.css" %></style> 
	<style type="text/css"><%@ include file="css/admin_dashboard_layout.css" %></style>

</head>

<body>
	<br><br>
	
	
	<table> 
	
	<tr> 
		<th>Student ID</th> 
		<th>Name of student</th> 
		<th>Departement</th> 
		<th>Class</th> 
		<th>Gender</th> 
		<th>Birth Date</th> 
		<th>Address</th> 
		<th>View</th>
		<th>Result</th>
	
	</tr>
	
	<tr>
		
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
			
		<form name="student_list" action="student_list" method="post">	
		
			<input type="hidden" name="STUDENT_ID" value="<%= rs.getString("STUDENT_ID") %>">
			<input type="hidden" name="PRN_NO" value="<%= rs.getString("PRN_NO") %>" >
		
			<td><%= rs.getString("STUDENT_ID") %></td>
			<td><%= rs.getString("STUDENT_NAME") %></td>
			<td><%= rs.getString("DEPARTMENT") %></td>
			<td><%= rs.getString("CLASS") %></td>
			<td><%= rs.getString("GENDER") %></td>
			<td><%= rs.getString("BIRTHDATE") %></td>
			<td><%= rs.getString("ADDRESS") %></td>
			<td> <button type="submit" name="submit" value="View" class="view-button" > <i class="fa fa-eye icon-spacing" aria-hidden="true"></i> </button> </td> 
			<td> <button type="submit" name="submit" value="Download" class="view-button" > <i class="fa fa-download icon-spacing" aria-hidden="true"></i> </button></td>
		</form>
		
		<% } %>
	</tr>
	
	 
	 
	
	</table>

</body>

</html>



