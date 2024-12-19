<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Marks Filling</title>
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
    <style type="text/css">
        <%@ include file="css/studdash.css" %>
       
        <%@ include file="css/marks_admindash.css" %>
        </style>

</head>
<body>
<div class="main">
    <div class="col-sm-2">
        <div class="container">
            <h3 style="color: black; font-weight: bold; font-size: 35px;">NMCE</h3>
            <br>
            
            <!-- Navigation Links -->
            <div>
                <ul>
                <li><a href="home.jsp">Home</a></li>
                   <li><a href="admindash.jsp">Dashboard</a></li>

<li><a href="addstudent_admin.jsp">Add a student</a></li>


<li><a href="subject_filling.jsp">Subject Filling</a></li>

<li><a href="marks_admindash.jsp">Marks Filling</a></li>


<li><a href="attendance.jsp">Attendence Filling</a></li>

<li><a href="parents_msg.jsp">Parents Information</a></li>

<li><a href="home.jsp">Logout</a></li>
                    <!-- Add more links as needed -->
                </ul>
            </div>
        </div>
    </div>
    <div class="col-sm-10">
        <!-- Inside the container2 div -->
        <div class="container2" >
          
            <hr>
           
            <br>
            <!-- Form -->
            <form name="marks_admindash" action="marks_admindash" method="post">
                <div class="row">
                    <div class="col-sm-5">
                        <div class="form-group">
                            <label><b>PRN:</b></label><br>
                            <input type="text" name="PRN">
                        </div>
                        <div class="form-group">
                            <label><b>Student Name:</b></label><br>
                            <input type="text" name="student_name">
                        </div>
                    </div>
                    <div class="col-sm-5">
                       <div class="form-group">
                            <label for="exam"><b>EXAM:</b></label><br>
                            <select name="exam" id="exam">
                                <option value="">Select Exam Type</option>
                                <option value="CA">CA</option>
                                <option value="MIDSEM">MIDSEM</option>
                                <option value="ENDSEMESTER">ENDSEMESTER</option>
                               
                              
                            </select>
                        </div>
                       
                        <div class="form-group">
                            <label for="semester"><b>SEMESTER:</b></label><br>
                            <select name="sem" id="sem">
                                <option value="">Select SEMESTER</option>
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

                    </div>
                </div>
                <!-- Submit Button -->
                 <br>
             <!-- Bottom buttons -->
             <div class="bottom-buttons">
                
                <button class="submit" name="submit" value="submit">Submit</button>
            </div>
              
            </form>
        </div>
    </div>
</div>
</body>
</html>
