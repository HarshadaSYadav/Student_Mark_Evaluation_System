<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="admin_dashboard_layout.jsp" %>

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
	   	             String sql = "select * from subject_add where SEMESTER= '"+session.getAttribute("sem")+"' && EXAM ='"+session.getAttribute("exam")+"' ";
	   	             st=cn.createStatement();
	   	             ResultSet rs=st.executeQuery(sql);
                	
	   	             while(rs.next())
	   	             { 
                		no++;
                	%>
                	<form action="endsemarks" method="post">
                	<input type="hidden" name="subject<%=no%>" value="<%= rs.getString("SUBJECT") %>" min="0" max="100" class="form-control" required>
                	<tr>
                        <td><%= rs.getString("SUBJECT") %></td>
                        <td><input type="number" name="marks<%=no%>" min="0" max="100" class="form-control" required></td>
                    </tr>
                    	
                    <% } %>
                    
                    <input type="hidden" name="total" value="<%=no%>">
                    <div class="submit-button text-center">
		                <button type="submit" name="submit" value="Submit" class="btn btn-primary">Submit</button> 
		            </div>
		            
                	
                </tbody>
                <tfoot>
                    <tr>
                        <td>SGPA</td>
                        <td><input type="number" step="0.01" name="sgpa" min="0" max="10" class="form-control" required></td>
                    </tr>
                    <tr>
                        <td>CGPA</td>
                        <td><input type="number" step="0.01" name="cgpa" min="0" max="10" class="form-control" required></td>
                    </tr>
                </tfoot>
                </form>
            </table>
            
    </div>
</body>
</html>
