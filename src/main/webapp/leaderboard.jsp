<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ page import= "java.io.*" %>
<%@ page import= "java.sql.*" %>

  <%
  		String student_name[] = new String[3];
  		String marks[] = new String[3];
  		int i = 0;
  		
  
		Connection cn = null;
		Statement st = null;
		Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_mark_evaluation_system","root","root");
        String sql = "select * from endsem ORDER BY SGPA DESC";
        st=cn.createStatement();
        ResultSet rs=st.executeQuery(sql);
	
        while(rs.next())
        {
       		if(i<3)
       		{
       			student_name[i] = rs.getString("STUDENT_NAME");
       			marks[i] = rs.getString("SGPA");
       			i++;
       		}
       		else
       		{
       			break;
       		}
        }
%>
		
		
<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">

    <title>Student Dashboard</title>

    <link rel="stylesheet" href="css/bootstrap.css" type="text/css">

    <link rel="stylesheet" href="css/leaderboard.css" type="text/css">

    <link rel="stylesheet" type ="text/css" href="css/bootstrap.css">

    <style><%@include file="css/leaderboard.css"%></style>

</head>

<body>

<div class="main">

    <div class="col-sm-2">

        <div class="container">

            <h3 style="color: black;font-weight:bold;font-size: 35px;">NMCE</h3>

            <br>

            <!-- Navigation Links -->

            <div>

                <ul>
                	<li><a href="home.jsp">Home</a></li>
  					<li><a href="studdash.jsp">Dashboard</a></li>
                    <li><a href="leaderboard.jsp">Leaderboard</a></li>
                    <li><a href="overall.jsp">Overall Performance</a></li>
                    <li><a href="editprofile.jsp">Edit Profile</a></li>
                    <li><a href="home.jsp">Logout</a></li>

                    <!-- Add more links as needed -->

                </ul>

            </div>

        </div>

    </div>

    <div class="col-sm-10">

        <!-- Inside the container2 div -->

        <div class="container2">

            <img src="images/stud.png" alt="Student1">

            <div class="student-container1">

                <div class="student">
                <h2>Student Name: <%= session.getAttribute("STUDENT_NAME") %></h2>
            </div>
            <div class="student"> 
                <p>PRN No: <%= session.getAttribute("PRN") %> </p>
            </div>

            </div>

            <hr>

            <br>
            <div class="student-container">
                <div class="student"  style="margin-top: 200px;">
                <img src="images/bronze medal.jpg" alt="Student 1"> <br> 
                	<p><%= student_name[2]  %> &nbsp; <%= marks[2]  %> </p>
                </div>
                
                
                <div class="student">
                   <img src="images/gold medal.jpg" alt="Student 2">
                   <p><%= student_name[0]  %> &nbsp; <%= marks[0]  %> </p>
                </div>
                
                <div class="student" style="margin-top: 200px;">
                   <img src="images/silver medal new.jpg" alt="Student 3">
                   <p><%= student_name[1]  %> &nbsp; <%= marks[1]  %> </p>
                </div>
            </div>
            <div class text align=center "congratulations-text">
                <label style="font-size:30px">Congratulations..!!</label>
            </div>

             

        </div>

        

    </div>

   

</div>

</body>

</html>