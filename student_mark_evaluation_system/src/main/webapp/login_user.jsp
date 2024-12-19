	<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<style>

@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,800;1,800&display=swap')


</style>

<meta charset="UTF-8">

<title>Login User</title>

<link rel="stylesheet" type ="text/css" href="css/login_user.css">

<link rel="stylesheet" type ="text/css" href="css/bootstrap.css">

<style type="text/css"><%@ include file="css/login_user.css" %></style>
<link rel="stylesheet" href="css/font-awesome-4.7.0/css/font-awesome.css" type="text/css">

<link rel="stylesheet" href="css/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css">

</head>

<body>
<div class="nav-link">

<a href="home.jsp">

<i class="fa fa-home" aria-hidden="true"></i>

<span class="mx-2">Home</span>

</a>

</div>

<div class="container">

<div class="container1">

<h1>Don't you have an account?</h1>

<hr class="new1">

<div class="button">

<a href="signup_user.jsp"> <button type="button">Register</button></a>

</div>

</div>

<div class="container2">

<h2>Login</h2>

<h4>Who you are?</h4>

<div class="image"> <img src="images/student1.png" width="50" height="50" id="student" onclick="select_role(this.id)"><br>Student </div>

<div class="image"> <img src="images/faculty.png" width="50" height="50" id="faculty" onclick="select_role(this.id)"><br>Faculty </div>


<div id="1" style="display: block;">


<form name="login_user" action="login_user" method="post">

<div class="form-group">

<label for="username">USER NAME:</label>

<input type="text" id="username" name="username" required>

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


<div id="2" style="display:none;">

<form name="faculty_login" action="faculty_login" method="post" >


<div class="form-group">

<label for="username">USER NAME:</label>

<input type="text" id="username" name="username" required>

</div>

<div class="form-group">

<label for="password">PASSWORD:</label>

<input type="password" id="password" name="password" required>

</div>

<div class="form-group">

<button type="submit" name="submit" value="Login">LOGIN</button>


</div>


</form>

</div>


<div ><a class="forgot" >Forgot Password?</a></div>


</div>

</div>

</body>
<script type="text/javascript">

function select_role(x)

{


if(x=="student")

{

document.getElementById("1").style.display = "block";

document.getElementById("2").style.display = "none";

}

else if (x=="faculty")

{

document.getElementById("2").style.display = "block";

document.getElementById("1").style.display = "none";

}


}

</script>


</html>

