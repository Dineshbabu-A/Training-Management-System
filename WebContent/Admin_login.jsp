<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Admin</title>

<style>
body{
 font-family: Verdana, Geneva, Tahoma, sans-serif;
}

.container{
padding-right:70px;
}

#ad{
   border: 1px ridge slategrey;
  border-radius: 5px; 
    height: 290px;
    padding-left:12px;
  box-shadow:2px 2px 8px #888888;

}
</style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="#" class="navbar-brand " style="color: whitesmoke;"><b>TRAINING INSTITUTE</b> </a>
            </div>
            <ul class="nav navbar-nav navbar-right" >
            <li><a  href="index.jsp"> <i class="glyphicon glyphicon-home"></i>Home</a></li>
                <li ><a  href="Admin_login.jsp"><i class="glyphicon glyphicon-user"></i>  Admin</a></li>
                <li><a  href="Institute_login.jsp"> <i class="glyphicon glyphicon-education"></i>Institute</a></li>
                <li><a  href="Student_login.jsp"> <i class="glyphicon glyphicon-user"></i>Student</a></li>
                
            </ul>
        </div>
    </nav> 

<div class="container " style="margin-top: 200px;">
        <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-5">
         <img src="img4.jpg" alt="Los Angeles" style="width:100%; height:350px;">
        </div>
            <div class="col-md-3" id="ad">
            
            <h2 style="padding-left:70px; font-family:"><b>Login</b></h2>
                <form  action="admin_login.do" method="post">
                
                <c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Err}</font>
				</c:if>
                    
                    <div class="form-group" >
                      <label for="userid" >User ID</label>
                      <input type="text" class="form-control" id="userid" name="userid" placeholder="User ID" required>
                    </div>
                    <div class="form-group">
                      <label for="password">Password</label>
                      <input type="password" class="form-control" id="password"  name="password" placeholder="Password" required>
                    </div>
                    <div></div>
                    <button type="submit" class="btn btn-info btn-block btn-sm">Login

                    </button>
                    </form>
            </div>
        </div>
        
    </div>
</body>
</html>