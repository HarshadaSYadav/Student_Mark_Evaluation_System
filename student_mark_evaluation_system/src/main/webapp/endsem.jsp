<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="student_dashboard_layout.jsp" %>

<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Endsem Entry</title>
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
    <style type="text/css"><%@ include file="css/admin_dashboard_layout.css" %></style>
    <style type="text/css"><%@ include file="css/marks_adminfill.css" %></style>
</head>
<body>
    <div class="container3" style="width:50%; height: 750px">
        <div class="header">
            <h1>Student Endsem Marks Entry</h1>
        </div>
        
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Subject</th>
                        <th>Marks</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                	 Connection cn = null;
                	 Statement st = null;
                	 
                	 int no = -1;
                	 
                	 Class.forName("com.mysql.jdbc.Driver");
	   	             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_mark_evaluation_system","root","root");
	   	             String sql = "select * from endsem where PRN_NO = '"+ session.getAttribute("PRN")+"'";
	   	             st=cn.createStatement();
	   	             ResultSet rs=st.executeQuery(sql);
                	
	   	             while(rs.next())
	   	             { 
                		no++;
                	%>
                	<form action="endsemarks" method="post">
                	
                		<tr>
                        <td><%= rs.getString("SUB1") %></td>
                        <td><%= rs.getString("MARKS1") %></td>
                    </tr>
                    
                    <tr>
                        <td><%= rs.getString("SUB2") %></td>
                        <td><%= rs.getString("MARKS2") %></td>
                    </tr>
                    
                    <tr>
                        <td><%= rs.getString("SUB3") %></td>
                        <td><%= rs.getString("MARKS3") %></td>
                    </tr>
                    
                    <tr>
                        <td><%= rs.getString("SUB4") %></td>
                        <td><%= rs.getString("MARKS4") %></td>
                    </tr>
                    
                    <tr>
                        <td><%= rs.getString("SUB5") %></td>
                        <td><%= rs.getString("MARKS5") %></td>
                    </tr>
                    
                      <tr>
                        <td><%= rs.getString("LAB1") %></td>
                        <td><%= rs.getString("LAB1MARKS") %></td>
                    </tr>
                    
                    <tr>
                        <td><%= rs.getString("MINIPROJECT_SEMINAR") %></td>
                        <td><%= rs.getString("MINI_SEMI_MARKS") %></td>
                    </tr>
 
                     <tr>
                        <td>CGPA</td>
                        <td><%= rs.getString("cgpa") %></td>
                    </tr>
                    
                    <tr>
                        <td>SGPA</td>
                        <td><%= rs.getString("sgpa") %></td>
                    </tr>

                    <% } %>
               
                	
                </tbody>
               
                </form>
            </table>
            
    </div>
</body>
</html>
