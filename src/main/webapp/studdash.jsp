<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
    <style type="text/css"><%@ include file="css/studdash.css" %></style>
    <style type="text/css"><%@ include file="css/search.css" %></style>
</head>
<body>
<div class="main">
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
        <div class="container2" >
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
            
            <form name="studdash" action="studdash" method="post">
            
             <div class="form-group" style="margin-left: 36%">
                            <label for="exam" name="exam"><b>YEAR:</b></label><br>
                            <select name="year" id="exam">
                                <option value="">Select Year:</option>
                                <option value="fy">F.Y</option>
                                <option value="sy">S.Y</option>
                                <option value="ty">T.Y</option>
                                <option value="btech">B.tech</option>
                               
                              
                            </select>
                        </div>
                       <br><br>
              <!-- Three containers with images and names -->
            <div class="student-container">
                <div class="student" >
                    <button name="submit" value="Continuous Assessment"><img src="images/ca1.jpg" alt="Student 1"></button>
                    <p>Continuous Assessment</p>
                </div>
                <div class="student">
                   <button name="submit" value="Mid Term"> <img src="images/books.jpg" alt="Student 2"></button>
                    <p>Mid Term</p>
                </div>
                <div class="student">
                   <button name="submit" value="End Semester"> <img src="images/exam.jpg" alt="Student 3"></button>
                    <p>End Semester</p>
                </div>
            </div>
            
            </form>
            <br>
             <!-- Bottom buttons -->
             <form name="upload_result" action="upload_result" method="post">
             <div class="bottom-buttons">
             	<input type="file" id="myFile" name="filename">
                <button class="upload-button" name="submit"  type="submit" value="upload">Upload Result</button>
            </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
