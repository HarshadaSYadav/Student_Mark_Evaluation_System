<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<style>

@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,800;1,800&display=swap')

</style>

<meta charset="UTF-8">

<title>Admin Login</title>

<link rel="stylesheet" type ="text/css" href="css/login_user.css">

<link rel="stylesheet" type ="text/css" href="css/bootstrap.css">

<style type="text/css"><%@ include file="css/admin1.css" %></style>

</head>

<body>

<div class="container">


<div class="container2">

<h2> Admin Login</h2>



<form name="login_admin" action="login_admin" method="post">

<div class="form-group">

<label for="username">USER NAME:</label>

<input type="text" id="username" name="username" required>`

</div>

<div class="form-group">

<label for="password">PASSWORD:</label>

<input type="password" id="password" name="password" required>

</div>

<div class="form-group">

<button type="submit" name="submit" value="Login">Login</button>


</div>



</form>

</div>


</body>

</html>

