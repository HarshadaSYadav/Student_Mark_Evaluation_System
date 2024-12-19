<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="student_dashboard_layout.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
    <style type="text/css"><%@ include file="css/editprofile.css" %></style>
     <style type="text/css"><%@ include file="css/admin_dashboard_layout.css" %></style> 
</head>
<body>
<br><br>
<div class="container-main">
        <h1>Edit the profile</h1>
        <form name="editprofile_student" action="editprofile_student" method="post">
           <div class="form-group">
                <label for="id"><b>Student ID:</b></label><br>
                <input type="text" name="id" id="id">
               
            </div>
         <div class="form-group">
                <label for="id"><b>Name:</b></label><br>
                <input type="text" name="name" id="name">
               
            </div>
            <div class="form-group">
                <label for="roll"><b>Username:</b></label><br>
                <input type="text" name="username" id="username">
            </div>
            <div class="form-group">
                <label for="PRN"><b>Password:</b></label><br>
                <input type="password" name="password" id="password">
            </div>
            <br><br>
            <div class="form-group" >
            <center>
  <button type="submit" name="submit" value="Update">Update</button></center>
  </div>
            </form>
            </div>
</body>
</html>