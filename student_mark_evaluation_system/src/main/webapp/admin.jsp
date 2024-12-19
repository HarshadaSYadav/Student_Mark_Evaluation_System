<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>


<%@include file="admin_dashboard_layout.jsp" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Admin dashboard</title>

<link rel="stylesheet" href="css/bootstrap.css" type="text/css">

<style type="text/css"><%@ include file="css/admin.css" %></style>

<style type="text/css"><%@ include file="css/admin_dashboard_layout.css" %></style>

</head>

<body>

<br>

<br>

<div class="search-container">

<input type="text" placeholder="Search..." class="search-input">

<button type="submit" class="search-button">Search</button>

</div>


<div class="dropdown-container">

<button class="dropdown-button">First Year</button>

<div class="dropdown-list-container">

<ul class="dropdown-list">

<li class="dropdown-list-item">I</li>

<li class="dropdown-list-item">II</li>

</ul>

</div></div>

<div class="dropdown-container">

<button class="dropdown-button">Second Year</button>

<div class="dropdown-list-container">

<ul class="dropdown-list">

<li class="dropdown-list-item">III</li>

<li class="dropdown-list-item">IV</li>


</ul>

</div></div>

<div class="dropdown-container">

<button class="dropdown-button">Third Year</button>

<div class="dropdown-list-container">

<ul class="dropdown-list">

<li class="dropdown-list-item">V</li>

<li class="dropdown-list-item">VI</li>


</ul>

</div></div>

<div class="dropdown-container">

<button class="dropdown-button">Last Year</button>

<div class="dropdown-list-container">

<ul class="dropdown-list">

<li class="dropdown-list-item">VII</li>

<li class="dropdown-list-item">VII</li>


</ul>

</div></div>

<script>

document.addEventListener("DOMContentLoaded", function() {

const dropdownButtons = document.querySelectorAll(".dropdown-button");


dropdownButtons.forEach(function(dropdownButton) {

const dropdownListContainer = dropdownButton.nextElementSibling;


dropdownButton.addEventListener("click", function() {

dropdownListContainer.style.display = dropdownListContainer.style.display === "block" ? "none" : "block";

});


const dropdownListItems = dropdownListContainer.querySelectorAll(".dropdown-list-item");

dropdownListItems.forEach(function(item) {

item.addEventListener("click", function() {

dropdownButton.innerText = item.innerText;

dropdownListContainer.style.display = "none";

});

});


// Close dropdown when clicking outside

document.addEventListener("click", function(event) {

if (!dropdownButton.contains(event.target) && !dropdownListContainer.contains(event.target)) {

dropdownListContainer.style.display = "none";

}

});

});

});

</script>

</body>

</html>

