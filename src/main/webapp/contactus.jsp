<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Contact Us</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>

@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,800;1,800&display=swap')

</style>


<style type="text/css"> <%@ include file="css/contactus.css" %> </style>


</head>

<body>
<div class="side-navbar active-nav d-flex justify-content-between flex-wrap flex-column" id="sidebar">

<ul class="nav flex-column text-white w-100">

<li class="nav-link">

<a href="home.jsp">

<i class="fa fa-home" aria-hidden="true"></i>

<span class="mx-2">Home</span>

</li></a>

<li href="about_us.jsp" class="nav-link">

<a href="about_us.jsp">

<i class="fa fa-info-circle" aria-hidden="true"></i>

<span class="mx-2">About Us</span></a>

</li>

<li href="contactus.jsp" class="nav-link">

<a href="contactus.jsp">

<i class="fa fa-envelope" aria-hidden="true"></i>

<span class="mx-2">Contact</span></a>

</li>

</ul>


</div>

<div class="container">

<div class="row">

<div class="col-sm-6">

<div class="header" id="1">

<img src="images/contact.png" alt="Image">

</div>

</div>

<div class="col-sm-6" id="2">

<div class="contact-form">

<h1>Contact Us</h1>

<form action="#" method="post">

<div class="form-group">

<label for="name">Name:</label>

<input type="text" id="name" name="name">

</div>

<div class="form-group">

<label for="email">Email:</label>

<input type="email" id="email" name="email">

</div>

<div class="form-group">

<label for="message">Message:</label>

<textarea id="message" name="message"></textarea>

</div>

<div class="form-group">

<button type="submit">Submit</button>

</div>

</form>

</div>

</div>

</div>

</div>

</body>

</html>