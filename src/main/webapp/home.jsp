<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
    <title>My Homepage</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: white; /* Text color on top of image */
        }
        @keyframes move_wave {
            0% {
                transform: translateX(0) translateZ(0) scaleY(1);
            }
            50% {
                transform: translateX(-25%) translateZ(0) scaleY(0.55);
            }
            100% {
                transform: translateX(-50%) translateZ(0) scaleY(1);
            }
        }
        .waveWrapper {
            overflow: hidden;
            position: absolute;
            left: 0;
            right: 0;
            bottom: 0;
            top: 0;
            margin: auto;
            z-index: -1; /* Push the waves behind other content */
        }
        .waveWrapperInner {
            position: absolute;
            width: 100%;
            overflow: hidden;
            height: 100%;
            bottom: -1px;
            background-image: linear-gradient(to top, #86377b 20%, #27273c 80%);
        }
        .bgTop {
            z-index: 15;
            opacity: 0.5;
        }
        .bgMiddle {
            z-index: 10;
            opacity: 0.75;
        }
        .bgBottom {
            z-index: 5;
        }
        .wave {
            position: absolute;
            left: 0;
            width: 200%;
            height: 100%;
            background-repeat: repeat no-repeat;
            background-position: 0 bottom;
            transform-origin: center bottom;
        }
        .waveTop {
            background-size: 50% 100px;
        }
        .waveAnimation .waveTop {
            animation: move-wave 3s;
            -webkit-animation: move-wave 3s;
            -webkit-animation-delay: 1s;
            animation-delay: 1s;
        }
        .waveMiddle {
            background-size: 50% 120px;
        }
        .waveAnimation .waveMiddle {
            animation: move_wave 10s linear infinite;
        }
        .waveBottom {
            background-size: 50% 100px;
        }
        .waveAnimation .waveBottom {
            animation: move_wave 15s linear infinite;
        }
        header {
            background-color: rgba(0, 0, 0, 0); /* Transparent black background */
            color: white;
            padding: 20px 0;
            text-align: center;
            position: relative; /* Ensure header is above wave animation */
            z-index: 2; /* Bring header to the front */
        }
        .line{
        width: 50%;
        border: 2px solid;
        }
        nav {
            background-color: rgba(0, 0, 0, 0); /* Transparent black background */
            color: white;
            padding: 10px 0;
            text-align: center;
            position: relative; /* Ensure nav is above wave animation */
            z-index: 2; /* Bring nav to the front */
        }
        nav a, span {
            color: white;
            text-decoration: none;
            margin: 0 10px;
        }
        nav a:hover {
            text-decoration: underline;
        }
        section {
            padding: 20px;
            text-align: center;
            color: white; /* Text color on top of image */
        }
        div h1 {
            color: white;
            text-align: center;
            margin-top: 250px;
        }
        footer {
            background-color: rgba(0, 0, 0, 0); /* Transparent black background */
            color: black;
            padding: 10px 0;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
            z-index: 2; /* Bring footer to the front */
        }
        .frame {
  width: 90%;
  margin: 40px auto;
  text-align: center;
}
button {
  margin: 20px;
}
.custom-btn {
  width: 130px;
  height: 40px;
  color: #fff;
  border-radius: 50px;
  padding: 10px 25px;
  font-family: 'Lato', sans-serif;
  font-weight: 500;
  font-size: 16px;
  background: transparent;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
   box-shadow: inset 2px 2px 2px 0px rgba(255,255,255,.5),
    inset -7px -7px 10px 0px rgba(0,0,0,.1),7px 7px 20px 0px rgba(0,0,0,.1),
   4px 4px 5px 0px rgba(0,0,0,.1);
  text-shadow:  2px 2px 3px rgba(255,255,255,.5),
              -4px -4px 6px rgba(116, 125, 136, .2);
  outline: none;
}
.btn-2 {
  background-color: #e8d1ff;
  color: rgba(96,9,240, 1.5);
  border: none;
  
}
.btn-2:before {
  height: 0%;
  width: 2px;
}
.btn-2:hover {
  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),
              -4px -4px 6px 0 rgba(116, 125, 136, .5), 
    inset -4px -4px 6px 0 rgba(255,255,255,.2),
    inset 4px 4px 6px 0 rgba(0, 0, 0, .2);
}



        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            z-index: 1;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>

<header>

    <h1>Welcome to The Student Marks Evaluation System</h1><hr class="line">
</header>

<div class="waveWrapper waveAnimation">
  <div class="waveWrapperInner bgTop">
    <div class="wave waveTop" style="background-image: url('http://front-end-noobs.com/jecko/img/wave-top.png')"></div>
  </div>
  <div class="waveWrapperInner bgMiddle">
    <div class="wave waveMiddle" style="background-image: url('http://front-end-noobs.com/jecko/img/wave-mid.png')"></div>
  </div>
  <div class="waveWrapperInner bgBottom">
    <div class="wave waveBottom" style="background-image: url('http://front-end-noobs.com/jecko/img/wave-bot.png')"></div>
  </div>
</div>

<nav>
<br><br><br>
    <a href="home.jsp"><button class="custom-btn btn-2"><b>Home</b></button></a>
    <a href="about_us.jsp"><button class="custom-btn btn-2"><b>About</b></button></a>
    <a href="contactus.jsp"><button class="custom-btn btn-2"><b>Contact Us</b></button></a>
    <div class="dropdown">
        <span><button class="custom-btn btn-2"><b>Sign Up</b></button></span>
        <div class="dropdown-content">
            <a href="signup_user.jsp">Student</a>
            <a href="signup_user.jsp">Faculty</a>
        </div>
    </div>
   
    <div class="dropdown">
        <span><button class="custom-btn btn-2"><b>Sign In</b></button></span>
        <div class="dropdown-content">
            <a href="login_user.jsp">Student</a>
            <a href="login_user.jsp">Faculty</a>
            <a href="admin1.jsp">Admin</a>
        </div>
    </div>
</nav>

<section>
<br><br><br><br><br><br>
    <h1>"Unlock Your Potential: Navigate Grades with Our Student Mark Evaluation System!"</h1>
</section>

<footer>
    <p><b>&copy; 2024. All rights reserved.</b></p>
</footer>

</body>
</html>
