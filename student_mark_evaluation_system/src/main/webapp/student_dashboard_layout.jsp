<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title></title>

<link rel="stylesheet" href="css/bootstrap.css" type="text/css">

<style type="text/css"><%@ include file="css/admin_dashboard_layout.css" %></style>



</head>

<body>

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


</div>

</div>

</body>

</html>