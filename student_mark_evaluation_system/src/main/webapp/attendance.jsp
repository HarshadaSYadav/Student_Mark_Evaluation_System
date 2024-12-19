<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title></title>

<link rel="stylesheet" href="css/bootstrap.css" type="text/css">

<style type="text/css"><%@ include file="css/leaderboard.css" %></style>

<style type="text/css"><%@ include file="css/attendance.css" %></style>

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

<li><a href="admin_dashboard.jsp">Dashboard</a></li>

<li><a href="addstudent_admin.jsp">Add a student</a></li>


<li><a href="subject_filling.jsp">Subject Filling</a></li>

<li><a href="marks_admindash.jsp">Marks Filling</a></li>


<li><a href="attendence_admin.jsp">Attendence Filling</a></li>

<li><a href="parents_msg.jsp">Parents Information</a></li>

<li><a href="user_login.jsp">Logout</a></li>

<!-- Add more links as needed -->

</ul>

</div>

</div>

</div>

<div class="col-sm-10">

<!-- Inside the container2 div -->

<div class="container2" >

<img src="images/stud.png" alt="Student1">

<div class="student-container1">

<div class="student">

<h2>Admin Name:</h2>

</div>

<div class="student">

</div>

</div>

<hr>

<br>

<div>

<header>

<h1>Attendance Form</h1>

</header>

<section>

<form name="attendance_admin" action="attendance_admin" method="post">

<div class="form-group">

<label for="student_name">Name:</label>

<input type="text" id="student_name" name="student_name">

</div>

<div class="form-group">

<label for="PRN">PRN:</label>

<input type="text" id="PRN" name="PRN" >

</div>

<div class="form-group">

<label for="class">Class:</label>

<select id="year" name="year">

<option value="FY">F.Y</option>

<option value="SY">S.Y</option>

<option value="TY">T.Y</option>

<option value="BTECH">B.tech</option>




</select>

</div>

<div class="form-group">

<label for="month">Month:</label>

<select id="month" name="month">

<option value="Jan">Jan</option>

<option value="Feb">Feb</option>

<option value="March">March</option>

<option value="April">April</option>

<option value="May">May</option>

<option value="June">June</option>

<option value="July">July</option>

<option value="Aug">Aug</option>

<option value="Sept">Sept</option>

<option value="Oct">Oct</option>

<option value="Nov">Nov</option>

<option value="Dec">Dec</option>



</select>

</div>

<div class="form-group">

<label for="attendance"> Attendance in percentage:</label>

<input type="text" id="attendance" name="attendance" >



</div>

<button type="submit" name="submit" value="Submit">Submit</button>

</form>

</section>

</div>

</div>

</div>

</body>

</html>