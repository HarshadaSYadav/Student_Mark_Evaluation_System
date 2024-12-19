<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import= "java.io.*" %>
<%@ page import= "java.sql.*" %>


<%
  		double ATTENDANCE = 0;
		double percentage = 0;
		double performance = 0;
		double i = 0;
		
		double fycgpa = 0;
		double tycgpa = 0;
		double sycgpa = 0;
		double btcgpa = 0;


		Connection cn = null;
		Statement st = null;
		String sql = "";
		ResultSet rs = null;
		
		
		
		// Attentance for perticular student
		
		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_mark_evaluation_system","root","root");
		sql = "select * from attendance where PRN_NO= '"+session.getAttribute("PRN")+"'  ";
		st=cn.createStatement();
		rs=st.executeQuery(sql);
		
		while(rs.next())
		{
			ATTENDANCE = rs.getDouble("ATTENDANCE");
		}
		
		// pecrntage 
		
		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_mark_evaluation_system","root","root");
		sql = "select * from endsem where PRN_NO= '"+session.getAttribute("PRN")+"'  ";
		st=cn.createStatement();
		rs=st.executeQuery(sql);
		
		while(rs.next())
		{
			percentage = rs.getDouble("CGPA")*10;
		}
		
		
		// performance
		
		performance = ( ATTENDANCE + percentage) / 2;
		
		
		// Fy performance
		
		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_mark_evaluation_system","root","root");
		sql = "select * from endsem where SEMESTER = 'II'  ";
		st=cn.createStatement();
		rs=st.executeQuery(sql);
		i = 0;
		
		while(rs.next())
		{
			i++;
			fycgpa += rs.getDouble("CGPA")*10;
		}
		
		fycgpa /= i;
		
		
		
		// SY performance
		
				Class.forName("com.mysql.jdbc.Driver");
				cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_mark_evaluation_system","root","root");
				sql = "select * from endsem where SEMESTER = 'IV'  ";
				st=cn.createStatement();
				rs=st.executeQuery(sql);
				i = 0;
				
				while(rs.next())
				{
					i++;
					sycgpa += rs.getDouble("CGPA")*10;
				}
				
				sycgpa /= i;
		
		
		// TY perormance
		
		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_mark_evaluation_system","root","root");
		sql = "select * from endsem where SEMESTER = 'VI'  ";
		st=cn.createStatement();
		rs=st.executeQuery(sql);
		i = 0;
		
		while(rs.next())
		{
			i++;
			tycgpa += rs.getDouble("CGPA")*10;
		}
		
		tycgpa /= i;
		
		
		// btech performance
		
		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_mark_evaluation_system","root","root");
		sql = "select * from endsem where SEMESTER = 'VIII'  ";
		st=cn.createStatement();
		rs=st.executeQuery(sql);
		i = 0;
		
		while(rs.next())
		{
			i++;
			btcgpa += rs.getDouble("CGPA")*10;
		}
		
		btcgpa /= i;
		

%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Overall Performance</title>
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
    <style type="text/css"><%@ include file="css/studdash.css" %></style>
    <style type="text/css"><%@ include file="css/overall.css" %></style>
    
    
    
    <style type="text/css">
    
    	 @-webkit-keyframes show-bar-one {
			  0% {
			    width: 0;
			  }
			  100% {
			   width: <%= fycgpa %>%;
			  }
			}
			
			@-webkit-keyframes show-bar-two {
			  0% {
			    width: 0;
			  }
			  100% {
			    width: <%= sycgpa %>%;
			  }
			}
			
			 @-webkit-keyframes show-bar-three {
			  0% {
			    width: 0;
			  }
			  100% {
			    width: <%= tycgpa %>%;
			  }
			}  
			
			@-webkit-keyframes show-bar-four {
			  0% {
			    width: 0;
			  }
			  100% {
			    width: <%= btcgpa %>%;
			  }
			}
     

    </style>
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
         <div class="container2">

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




            
            
 <div class="svg-item">
  <svg width="75%" height="75%" viewBox="0 0 40 40" class="donut">
    <circle class="donut-hole" cx="20" cy="20" r="15.91549430918954" fill="#202631"></circle>
    <circle class="donut-ring" cx="20" cy="20" r="15.91549430918954" fill="transparent" stroke-width="3.5"></circle>
    <circle class="donut-segment donut-segment-2" cx="20" cy="20" r="15.91549430918954" fill="transparent" stroke-width="3.5" stroke-dasharray="<%= ATTENDANCE %> <%= 100-ATTENDANCE %>" stroke-dashoffset="25"></circle>
    <g class="donut-text donut-text-1">

      <text y="50%" transform="translate(0, 2)">
        <tspan x="50%" text-anchor="middle" class="donut-percent"><%=ATTENDANCE%> % </tspan>   
      </text>
      <text y="60%" transform="translate(0, 2)">
        <tspan x="50%" text-anchor="middle" class="donut-data">Attentance in Last Month</tspan>   
      </text>
    </g>
  </svg>
</div>


<div class="svg-item">
  <svg width="75%" height=75%" viewBox="0 0 40 40" class="donut">
    <circle class="donut-hole" cx="20" cy="20" r="15.91549430918954" fill="#202631"></circle>
    <circle class="donut-ring" cx="20" cy="20" r="15.91549430918954" fill="transparent" stroke-width="3.5"></circle>
    <circle class="donut-segment donut-segment-3" cx="20" cy="20" r="15.91549430918954" fill="transparent" stroke-width="3.5" stroke-dasharray="<%= percentage %> <%= 100-percentage %>" stroke-dashoffset="25"></circle>
    <g class="donut-text donut-text-2">

      <text y="50%" transform="translate(0, 2)">
        <tspan x="50%" text-anchor="middle" class="donut-percent"> <%= percentage  %> % </tspan>   
      </text>
      <text y="60%" transform="translate(0, 2)">
        <tspan x="50%" text-anchor="middle" class="donut-data">Last Semester %</tspan>   
      </text>
    </g>
  </svg>
</div>

<div class="svg-item">
  <svg width="75%" height="75%" viewBox="0 0 40 40" class="donut">
    <circle class="donut-hole" cx="20" cy="20" r="15.91549430918954" fill="#202631"></circle>
    <circle class="donut-ring" cx="20" cy="20" r="15.91549430918954" fill="transparent" stroke-width="3.5"></circle>
    <circle class="donut-segment donut-segment-4" cx="20" cy="20" r="15.91549430918954" fill="transparent" stroke-width="3.5" stroke-dasharray="<%=performance %> <%= 100-performance %>" stroke-dashoffset="25"></circle>
    <g class="donut-text donut-text-3">

      <text y="50%" transform="translate(0, 2)">
        <tspan x="50%" text-anchor="middle" class="donut-percent"> <%= performance %> % </tspan>   
      </text>
      <text y="60%" transform="translate(0, 2)">
        <tspan x="50%" text-anchor="middle" class="donut-data">Overall Performance</tspan>   
      </text>
    </g>
  </svg>
</div>
    <br><br><br><br>
    <section class="bar-graph bar-graph-horizontal bar-graph-one">
  <div class="bar-one">
    <span class="year">FY</span>
    <div class="bar" data-percentage="69.6%"></div>
  </div>
  <div class="bar-two">
    <span class="year">SY</span>
    <div class="bar" data-percentage="71%"></div>
  </div>
  <div class="bar-three" >
    <span class="year" > TY</span>
    <div class="bar"  data-percentage="<%= tycgpa %>%" ></div>
  </div>
  <div class="bar-four">
    <span class="year">BTECH</span>
    <div class="bar" data-percentage="76.8%"></div>
  </div>
      <div class="col-xs-12 text-center"><br>
      <p><span class="legend"></span>Performance Evaluation Of Each Class</p>
    </div>
</section>
<div class="calender">
  <ul class="month">
    <li>
      <h1>January</h1>
      <h2>2016</h2>
    </li>
    <span class="prev">&#10094;</span>
    <span class="next">&#10095;</span>
  </ul>
  <ul class="weeks">
    <li>Sa</li>
    <li>Su</li>
    <li>Mo</li>
    <li>Tu</li>
    <li>We</li>
    <li>Th</li>
    <li>Fr</li>
  </ul>
  <ul class="days">

  </ul>
</div>
  </div>
</div>
</div>
</div>
<script>
/*global console*/
//calender
//month
//prev
//next
//weeks
//days

//punblic variables
var calender = document.querySelector(".calender"),//container of calender
  topDiv = document.querySelector('.month'),
  monthDiv = calender.querySelector("h1"),//h1 of monthes
  yearDiv = calender.querySelector('h2'),//h2 for years
  weekDiv = calender.querySelector(".weeks"),//week container
  dayNames = weekDiv.querySelectorAll("li"),//dayes name
  dayItems = calender.querySelector(".days"),//date of day container
  prev = calender.querySelector(".prev"),
  next = calender.querySelector(".next"),

  // date variables
  years = new Date().getFullYear(),
  monthes = new Date(new Date().setFullYear(years)).getMonth(),
  lastDayOfMonth = new Date(new Date(new Date().setMonth(monthes + 1)).setDate(0)).getDate(),
  dayOfFirstDateOfMonth = new Date(new Date(new Date().setMonth(monthes)).setDate(1)).getDay(),

  // array to define name of monthes
  monthNames = ["January", "February", "March", "April", "May", "June",
                "July", "August", "September", "October", "November", "December"],
  colors = ['#FFA549', '#ABABAB', '#1DABB8', '#953163', '#E7DF86', '#E01931', '#92F22A', '#FEC606', '#563D28', '#9E58DC', '#48AD01', '#0EBB9F'],
  i,//counter for day before month first day in week
  x,//counter for prev , next
  counter;//counter for day of month  days;


//display dayes of month in items
function days(x) {
'use strict';
dayItems.innerHTML = "";
monthes = monthes + x;

/////////////////////////////////////////////////
//test for last month useful while prev ,max prevent go over array
if (monthes > 11) {
  years = years + 1;
  monthes = new Date(new Date(new Date().setFullYear(years)).setMonth(0)).getMonth();//ترجع الشهر لاول شهر فى السنه الجديده
}
if (monthes < 0) {
  years = years - 1;
  monthes = new Date(new Date(new Date().setFullYear(years)).setMonth(11)).getMonth();//ترجع الشهر لاخر شهر فى السنه اللى فاتت
}
//هعرف اخر يوم واول يوم فى الشهر تانى علشان الشهر بيتغير مع next,prev
lastDayOfMonth = new Date(new Date(new Date(new Date().setFullYear(years)).setMonth(monthes + 1)).setDate(0)).getDate();//اخر يوم فى الشهر
dayOfFirstDateOfMonth = new Date(new Date(new Date(new Date().setFullYear(years)).setMonth(monthes)).setDate(1)).getDay();//بداية الشهر فى اى يوم من ايام الاسبوع؟
/////////////////////////////////////////////////
yearDiv.innerHTML = years;
monthDiv.innerHTML = monthNames[monthes];
for (i = 0; i <= dayOfFirstDateOfMonth; i = i + 1) {
  if (dayOfFirstDateOfMonth === 6) { break; }
  dayItems.innerHTML += "<li> - </li>";
}
for (counter = 1; counter <= lastDayOfMonth; counter = counter + 1) {
  dayItems.innerHTML += "<li>" + (counter) + "</li>";


}
topDiv.style.background = colors[monthes];
dayItems.style.background = colors[monthes];
//تمييز اليوم الحالى
if (monthes === new Date().getMonth() && years === new Date().getFullYear()) {
  //فى حالة التاريخ الحالى =الخلفيه خضراء
  dayItems.children[new Date().getDate() + dayOfFirstDateOfMonth].style.background = "#2ecc71";
}
}
prev.onclick = function () {
'use strict';
days(-1);//decrement monthes
};
next.onclick = function () {
'use strict';
days(1);//increment monthes
};
days(0);

//end
</script>
</body>
</html>
