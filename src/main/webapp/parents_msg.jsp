<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="admin_dashboard_layout.jsp" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Parents Message</title>

<link rel="stylesheet" href="css/bootstrap.css" type="text/css">

<style type="text/css"><%@ include file="css/addstudent_admin.css" %></style>

<style type="text/css"><%@ include file="css/admin_dashboard_layout.css" %></style>


</head>

<body>

<br>

<br>

<br>

<div class="container1">

<h1>Parents Information</h1>

<form name="parents_msg" action="parents_msg" method="post">

<div class="form-group">

<label for="id"><b>Student ID.:</b></label><br>

<input type="text" name="id" id="id">


</div>

<div class="form-group">

<label for="roll"><b>Roll NO.:</b></label><br>

<input type="text" name="roll" id="roll">

</div>

<div class="form-group">

<label for="PRN"><b>PRN:</b></label><br>

<input type="text" name="PRN" id="PRN">

</div>

<div class="form-group">

<label for="student_name"><b>Student Name:</b></label><br>

<input type="text" name="student_name" id="student_name">

</div>

<div class="form-group">

<label for="dept"><b>Department:</b></label><br>

<select name="dept" id="dept">

<option value="">Select Department</option>

<option value="cse">CSE</option>

<option value="Entc">Entc</option>

<option value="ele">Ele</option>

<option value="civil">Civil</option>

<option value="mech">Mech</option>

</select>

</div>

<div class="form-group">

<label for="year"><b>Class:</b></label><br>

<select name="year" id="year">

<option value="">Select Year</option>

<option value="F.Y">F.Y</option>

<option value="S.Y">S.Y</option>

<option value="T.Y">T.Y</option>

<option value="B.tech">B.tech</option>

</select>

</div>

<div class="form-group">

<label for="sem"><b>Semester:</b></label><br>

<select name="sem" id="sem">

<option value="">Select Semester</option>

<option value="i">I</option>

<option value="ii">II</option>

<option value="iii">III</option>

<option value="iv">IV</option>

<option value="v">V</option>

<option value="vi">VI</option>

<option value="vii">VII</option>

<option value="viii">VIII</option>

</select>

</div>



<div class="form-group">

<label for="email"><b>Parent's Email ID:</b></label><br>

<input type="text" name="parent_email" id="email">

</div>
<div class="form-group">

<label for="cgpa"><b>CGPA:</b></label><br>

<input type="text" name="cgpa" id="cgpa">

</div>
<div class="form-group">

<label for="attendance"><b>Attendance:</b></label><br>

<input type="text" name="attendance" id="attendance">

</div>



<div class="form-group" >

<button type="submit" name="submit" value="Add">Add</button>



<button type="submit" name="submit" value="Update">Update</button>


<button type="submit" name="submit" value="Delete">Delete</button>

</div>


</form>



</div>


</body>

</html>