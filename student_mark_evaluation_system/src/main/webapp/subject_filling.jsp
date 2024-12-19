<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<%@include file="admin_dashboard_layout.jsp" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Subject Filling</title>

<link rel="stylesheet" href="css/bootstrap.css" type="text/css">

<style type="text/css"><%@ include file="css/subject_filling.css" %></style>

<style type="text/css"><%@ include file="css/admin_dashboard_layout.css" %></style>

</head>

<body>

<br>

<br>

<form name="subject_filling" action="subject_filling" method="post">

<div class="form-group">

<label for="ID"><b>Subject ID.:</b></label><br>

<input type="text" name="ID" id="ID">


</div>

<div class="form-container">

<div class="select-container">

<label for="department">Department:</label>

<select name="department" id="department" class="select-element">

<option value="CSE">CSE</option>

<option value="ELE">ELE</option>

<option value="CIVIL">CIVIL</option>

<option value="ENTC">ENTC</option>

<option value="MECH">MECH</option>

</select>

</div>

<div class="select-container">

<label for="semester">Semester:</label>

<select name="semester" id="semester" class="select-element">
<option value="I">I</option>

<option value="II">II</option>

<option value="III">III</option>

<option value="IV">IV</option>

<option value="V">V</option>

<option value="VI">VI</option>

<option value="VII">VII</option>

<option value="VIII">VIII</option>

</select>

</div>
<div class="select-container">

<label for="exam">Exam Type:</label>

<select name="exam" id="exam" class="select-element">

<option value="CA">CA</option>

<option value="MIDSEM">MIDSEM</option>

<option value="ENDSEMESTER">ENDSEMESTER</option>



</select>

</div>


<div class="select-container">

<label for="subject">Subjects:</label>

<select name="subject" id="subject" class="select-element">

<option value="BTBS301-M3">BTBS301-M3</option>

<option value="BTCOC302-DM">BTCOC302-DM</option>

<option value="BTCOC303-DS">BTCOC303-DS</option>

<option value="BTCOC304-CAO">BTCOC304-CAO</option>

<option value="BTCOC305A-OOPC++">BTCOC305A-OOPC++</option>

<option value="BTCOC305B-OOPJ">BTCOC305B-OOPJ</option>

<option value="BTCOL306-DS LAB & OOP LAB">BTCOL306-DS LAB & OOP LAB</option>

<option value="BTCOS307-SEMINAR-I">BTCOS307-SEMINAR-I</option>

<option value="BTES211P-Field training/Internship">BTES211P-Field training/Internship</option>

<option value="BTCOC401-DAA">BTCOC401-DAA</option>

<option value="BTCOC402-OS">BTCOC402-OS</option>

<option value="BTHM403-BHR">BTHM403-BHR</option>

<option value="BTBS404-PTRS">BTBS404-PTRS</option>

<option value="BTES405-DLDM">BTES405-DLDM</option>

<option value="BTCOL406-OS LAB & PYTHON LAB">BTCOL406-OS LAB & PYTHON LAB</option>

<option value="BTCOS407-SEMINAR-II">BTCOS407-SEMINAR-II</option>

<option value="BTCOF408-Field training/Internship">BTCOF408-Field training/Internship</option>

<option value="BTCOC501-DS">BTCOC501-DS</option>

<option value="BTCOC502-TOC">BTCOC502-TOC</option>

<option value="BTCOC503-SE">BTCOC503-SE</option>

<option value="BTCOE504A-HCI">BTCOE504A-HCI</option>

<option value="BTCOE504B-NM">BTCOE504B-NM</option>

<option value="BTHM505A-EM">BTHM505A-EM</option>

<option value="BTHM505B-BC">BTHM505B-BC</option>

<option value="BTCOL506-DS LAB & SE LAB">BTCOL506-DS LAB & SE LAB</option>

<option value="BTCOM507-MINI PROJECT-I">BTCOM507-MINI PROJECT-I</option>

<option value="BTCOF508-Field training/Internship">BTCOF508-Field training/Internship</option>

<option value="BTCOC601-CD">BTCOC601-CD</option>

<option value="BTCOC603-ML">BTCOC603-ML</option>

<option value="BTCOE604A-GIS">BTCOE604A-GIS</option>

<option value="BTCOE604B-IOT">BTCOE604B-IOT</option>

<option value="BTCOE604C-ES">BTCOE604C-ES</option>

<option value="BTHM605A-DE">BTHM605A-DE</option>

<option value="BTHM605B-ESD">BTHM605B-ESD</option>

<option value="BTHM605C-CB">BTHM605C-CB</option>

<option value="BTCOL606-CP & ML LAB">BTCOL606-CP & ML LAB</option>

<option value="BTCOM607-MINI PROJECT-II">BTCOM607-MINI PROJECT-II</option>

<option value="BTCOF608-Field training/Training">BTCOF608-Field training/Training</option>

<option value="BTCOC701-AI">BTCOC701-AI</option>

<option value="BTCOC702-CC">BTCOC702-CC</option>

<option value="BTCOE703A-BIOINFORMATICS">BTCOE703A-BIOINFORMATICS</option>

<option value="BTCOE703B-DS">BTCOE703B-DS</option>

<option value="BTCOE703C-BDA">BTCOE703C-BDA</option>

<option value="BTCOE704A-CG & NS">BTCOE704A-CG & NS</option>

<option value="BTCOE704B-BI">BTCOE704B-BI</option>

<option value="BTCOE704C-BCT">BTCOE704C-BCT</option>

<option value="BTCOE705A-VR">BTCOE705A-VR</option>

<option value="BTCOE705B-DL">BTCOE705B-DL</option>

<option value="BTCOE705C-DT">BTCOE705C-DT</option>

<option value="BTHM706-FLS">BTHM706-FLS</option>

<option value="BTCOL707-AI & CC LAB">BTCOL707-AI & CC LAB</option>

<option value="BTCOS708-PROJECT PHASE-I">BTCOS708-PROJECT PHASE-I</option>

<option value="BTCOF708-Field training/Internship">BTCOF708-Field training/Internship</option>

</select>

</div>

</div>

<div class="form-group">

<button type="submit" name="submit" value="Submit">Submit</button>

<button type="submit" name="submit" value="Update">Update</button>

<button type="submit" name="submit" value="Delete">Delete</button>

</div>




</form>


</body>

</html>