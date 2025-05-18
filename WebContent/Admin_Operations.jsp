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
			margin-top:50px;
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
                <li ><a  href="admin_logout.do"><i class="glyphicon glyphicon-user"></i>  Logout</a></li>
            </ul>
        </div>
    </nav> 
    
    <div class="container">
     <%HttpSession mysession=request.getSession(false);
			String app_user=(String)mysession.getAttribute("app_user");%>
			
			<div>
        <img src="img9.jpg" alt="Los Angeles" style="width:100%; height:500px;">
    </div>
    
    <div class="container" style="margin-top:20px;">
    <div class="row" >    
		<div class="col-sm-3" id="a">
		 <img src="img6.jpg" alt="Los Angeles" style="width:100%; height:200px;">
		 <p > An institute is an organisation body created for a certain purpose. They are often research organisations (research institutes) created to do research on specific topics, or can also be a professional body.</p>
		 <form action="approve_ins.do" method="post">
		 
		  <c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Er}</font>
				</c:if>
                    <font color="green" size="2">${requestScope.success }</font>
                    <div class="form-group" >
                      <input type="text" class="form-control" id="approve" name="approve" placeholder="Status" required>
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" id="institute"  name="institute" placeholder="Institute Id" required>
                    </div>
		 
		 <button type="submit" class="btn btn-success btn-block">Approve</button>
		 </form>
		</div>
		
		<div class="col-sm-3" id="b">
		 <img src="img4.jpg" alt="Los Angeles" style="width:100%; height:250px;">
		 <p > An institute is an organisation body created for a certain purpose. They are often research organisations (research institutes) created to do research on specific topics, or can also be a professional body.</p>
		 <form action="delete.do" method="post">
		  <c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Err}</font>
				</c:if>
				<font color="green" size="2">${requestScope.suc }</font>
              <div class="form-group">
               <input type="text" class="form-control" id="institute"  name="institute" placeholder="Institute Id" required>
            </div>
		 <button type="submit" class="btn btn-success btn-block">Delete</button>
		 </form>
		</div>
		
		<div class="col-sm-3" id="c">
		<img src="img8.jpg" alt="Los Angeles" style="width:100%; height:300px;">
		 <p > An institute is an organisation body created for a certain purpose. They are often research organisations (research institutes) created to do research on specific topics, or can also be a professional body.</p>
		 <form action="studdetails.do" method="post">
		 <button type="submit" class="btn btn-success btn-block">View Student</button>
		 </form>
		</div>
		
		<div class="col-sm-3" id="d">
		<img src="img11.jpg" alt="Los Angeles" style="width:100%; height:300px;">
		 <p > An institute is an organisation body created for a certain purpose. They are often research organisations (research institutes) created to do research on specific topics, or can also be a professional body.</p>
		 <form action="complaint.do" method="post">
		 <button type="submit" class="btn btn-success btn-block">View Complaint</button>
		 </form>
		</div>
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