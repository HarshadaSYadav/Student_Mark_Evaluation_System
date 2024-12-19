<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title></title>

<link rel="stylesheet" href="css/bootstrap.css" type="text/css">

<style type="text/css"><%@ include file="css/student_info.css" %></style>



</head>

<body>



<hr><br>

<div class="container">

<h1>Student Information</h1>

<form name="student_info" action="student_info" method="post">

<div class="form-group">

<label for="id"><b>Student ID.:</b></label><br>

<input type="text" name="id" id="id">

<button type="submit" class="search-button">Search</button>

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

<label for="gender"><b>Gender:</b></label><br>

<select name="gender" id="gender">

<option value="">Select Gender</option>

<option value="female">Female</option>

<option value="male">Male</option>

<option value="other">Other</option>

</select>

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

<option value="sy">S.Y</option>

<option value="ty">T.Y</option>

<option value="btech">B.tech</option>

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

<label for="birthday"><b>Birthday:</b></label><br>

<input type="date" id="birthday" name="birthday">

</div>

<div class="form-group">

<label for="phone_no"><b>Phone Number:</b></label><br>

<input type="text" name="phone_no" id="phone_no">

</div>

<div class="form-group">

<label for="email"><b>Email ID:</b></label><br>

<input type="text" name="email" id="email">

</div>

<div class="form-group">

<label for="address"><b>Address:</b></label><br>

<input type="text" name="address" id="address">

</div>

<center>

<div class="form-group" >

<button type="submit" name="submit" value="Add">Add</button>



<button type="submit" name="submit" value="update">Update</button>


<button type="submit" name="submit" value="delete">Delete</button>

</div>

</center>

</form>

</div>


</body>

</html>