<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Training Institute</title>


<style>

body{
 font-family: Verdana, Geneva, Tahoma, sans-serif;
}
h1,p{
  font-family: Verdana, Geneva, Tahoma, sans-serif;
}
.p{
padding-top:45px;
}

.sticky-footer{
			background-color: slategrey;			
			height:100px;
			margin-top:121px;
			position:sticky;
			jusity-content:center;
            color: black;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            
        }
</style>

</head>
<body>

<%
String context = request.getContextPath(); 
%>
<nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="#" class="navbar-brand " style="color: whitesmoke;"><b>TRAINING INSTITUTE</b> </a>
            </div>
            <ul class="nav navbar-nav navbar-right" >
                <li ><a  href="Admin_login.jsp"><i class="glyphicon glyphicon-user"></i>  Admin</a></li>
                <li><a  href="Institute_login.jsp"> <i class="glyphicon glyphicon-education"></i>Institute</a></li>
                <li><a  href="Student_login.jsp"> <i class="glyphicon glyphicon-user"></i>Student</a></li>
            </ul>
        </div>
    </nav> 
    
    
    <div class="container" style="margin-top: 200px;"> 
        <div class="row">
            <div class="col-md-6" style="padding-top:50px;">
            
            <h2>Training Institute Management</h2>
            <p>Gain your knowledge</p>
            <div class="row">
            <div class="col-md-3">
             <button type="button" class="btn btn-danger btn-block btn-md">Get Started
                    </button>
            </div>
            </div>
             </div>
            <div class="col-md-6" >
                <div id="myCarousel" class="carousel slide " data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                      <li data-target="#myCarousel" data-slide-to="1"></li>
                      <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                      <div class="item active">
                        <img src="img1.jpg" alt="Los Angeles" style="width:100%;">
                      </div>
                
                      <div class="item">
                        <img src="img2.jpg" alt="Chicago" style="width:100%;">
                      </div>
                      <div class="item">
                        <img src="img3.jpg" alt="City" style="width:100%;">
                      </div>
                    </div>
                
                  </div>
            </div>
           
        </div>
    </div>
    <footer class="sticky-footer">
    <div class="container text-center" style="color: whitesmoke;">
      <p class="p" > @ Copyright Training Institute 2023</p>
    </div>
  </footer>
</body>
</html>