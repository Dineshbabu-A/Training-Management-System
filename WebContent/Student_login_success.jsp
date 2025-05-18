<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Student</title>
<style>

.row{
padding-left:2px;
}

#a{
width:24%;
    border: 1px ridge slategrey;
  border-radius: 5px;
    height: 520px;
  box-shadow:2px 2px 8px #888888;

}
#b{
width:24%;
    border: 1px ridge slategrey;
  border-radius: 5px;
    height: 520px;
  box-shadow:2px 2px 8px #888888;
margin-left:10px;
}
#c{
width:24%;
    border: 1px ridge slategrey;
  border-radius: 5px;
    height: 520px;
  box-shadow:2px 2px 8px #888888;
margin-left:10px;
}
#d{
width:23%;
    border: 1px ridge slategrey;
  border-radius: 5px;
    height: 520px;
  box-shadow:2px 2px 8px #888888;
margin-left:10px;
}
body{
 font-family: Verdana, Geneva, Tahoma, sans-serif;
}

.sticky-footer{
			background-color: slategrey;			
			height:100px;
			margin-top:70px;
			position:sticky;
			jusity-content:center;
            color: black;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            
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
                <li ><a  href="logout.do"><i class="glyphicon glyphicon-user"></i>  Logout</a></li>
            </ul>
        </div>
    </nav> 
    
    
    <div class="container " style="margin: 50px;">
    
    <%
    String context = request.getContextPath();
	HttpSession mysession=request.getSession(false);
			String app_user=(String)mysession.getAttribute("userId");%>

    </div>
    <div class="container" style="margin-top:20px;">
    <div class="row" >    
		<div class="col-sm-3" id="a">
		 <img src="img6.jpg" alt="Los Angeles" style="width:100%; height:200px;">
		 <p > An institute is an organisation body created for a certain purpose. They are often research organisations (research institutes) created to do research on specific topics, or can also be a professional body.</p>
		  <form  action="student_update.do" method="post">
		   <c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Err}</font>
		</c:if>
		<font color="green" size="3">${requestScope.success }</font>
                     <div class="form-group" >
                      <input type="text" class="form-control" id="studentid" name="studentid" placeholder="Student ID" required>
                    </div>
                    
                    <div class="form-group" >
                      <input type="text" class="form-control" id="contact" name="contact" placeholder="Contact Number" required>
                    </div>                    
                    
                    <button type="submit" class="btn btn-success btn-block btn-md">Submit
                    </button>
                    </form>
		</div>
		
		<div class="col-sm-3" id="b">
		 <img src="img4.jpg" alt="Los Angeles" style="width:100%; height:150px;">
		 <p > An institute is an organisation body created for a certain purpose.</p>
		 <form  action="request.do" method="post">
                
                <c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Errr}</font>
		</c:if>
                    <font color="green" size="3">${requestScope.suc }</font>
                    <div class="form-group" >
                      <label for="request" > Request Id</label>
                      <input type="text" class="form-control" id="request" name="request" placeholder="Response Id" required>
                    </div>
                    
                    <div class="form-group" >
                      <label for="message" > Message</label>
                      <input type="text" class="form-control" id="message" name="message" placeholder="Message" required>
                    </div>
                    
                    <div class="form-group" >
                      <label for="studentid" >Student ID</label>
                      <input type="text" class="form-control" id="studentid" name="studentid" placeholder="Student ID" required>
                    </div>
                    
                    <button type="submit" class="btn btn-success btn-block">Submit
                    </button>
                   </form>
		</div>
		
		<div class="col-sm-3" id="c">
		<img src="img8.jpg" alt="Los Angeles" style="width:100%; height:290px;">
		 <p > An institute is an organisation body created for a certain purpose. They are often research organisations (research institutes) created to do research on specific topics, or can also be a professional body.</p>
		 <form action="view_response.do" method="post">
		 <button type="submit" class="btn btn-success btn-block">View Response</button>
		 </form>
		</div>
		
		<div class="col-sm-3" id="d">
		<img src="img11.jpg" alt="Los Angeles" style="width:100%; height:150px;">
		 <p > An institute is an organisation body created for a certain purpose.</p>
		 <form  action="feedback.do" method="post">
                
                 <c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Errrr}</font>
		</c:if>
                
                    <font color="green" size="3">${requestScope.succ }</font>
                    <div class="form-group" >
                      <label for="feedbackid" > Feedback Id</label>
                      <input type="text" class="form-control" id="feedbackid" name="feedbackid" placeholder="Feedback Id" required>
                    </div>
                    
                    <div class="form-group" >
                      <label for=""feedback"" > Feedback</label>
                      <input type="text" class="form-control" id=""feedback"" name="feedback" placeholder="Message" required>
                    </div>
                    
                    <div class="form-group" >
                      <label for="studentid" >Student ID</label>
                      <input type="text" class="form-control" id="studentid" name="studentid" placeholder="Student ID" required>
                    </div>
                    
                    <button type="submit" class="btn btn-success btn-block">Submit
                    </button>
                   </form>
		</div>
	</div>
    </div>
    
     <footer class="sticky-footer">
    <div class="container text-center" style="color: whitesmoke;">
      <p class="p" style="padding-top:40px;"> @ Copyright Training Institute 2023</p>
    </div>
  </footer>

</body>
</html>