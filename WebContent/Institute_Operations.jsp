<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Institute</title>

<style>
img {
  display: block;
  max-width: 100%;
  
}
body{
 font-family: Verdana, Geneva, Tahoma, sans-serif;
}
.col-md-7{
padding-left:5px;
}
#a{
	
    border: 1px ridge slategrey;
  border-radius: 5px;
    height: 230px;
  box-shadow:2px 2px 8px #888888;

}
#b{

	width:32%;
    border: 1px ridge slategrey;
  border-radius: 5px;
    height: 230px;
  box-shadow:2px 2px 8px #888888;
  margin-left:5px;

}
#c{

    border: 1px ridge slategrey;
  border-radius: 5px;
    height: 230px;
  box-shadow:2px 2px 8px #888888;
  margin-left:5px;

}
#aa{
width:33%;
    border: 1px ridge slategrey;
  border-radius: 5px;
    height: 690px;
  box-shadow:2px 2px 8px #888888;
margin-left:0px;
}
#bb{
width:32%;
    border: 1px ridge slategrey;
  border-radius: 5px;
    height: 690px;
  box-shadow:2px 2px 8px #888888;
margin-left:10px;
}
#cc{
width:33%;
    border: 1px ridge slategrey;
  border-radius: 5px;
    height: 690px;
  box-shadow:2px 2px 8px #888888;
margin-left:5px;
}
#dd{
width:32%;
    border: 1px ridge slategrey;
  border-radius: 5px;
    height: 400px;
  box-shadow:2px 2px 8px #888888;
margin-left:10px;
}
#ee{
width:32%;
    border: 1px ridge slategrey;
  border-radius: 5px;
    height: 400px;
  box-shadow:2px 2px 8px #888888;
margin-left:10px;
}
#ff{
width:32%;
    border: 1px ridge slategrey;
  border-radius: 5px;
    height: 400px;
  box-shadow:2px 2px 8px #888888;
margin-left:10px;
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
                <li ><a  href="ins_logout.do"><i class="glyphicon glyphicon-user"></i>  Logout</a></li>
                
            </ul>
        </div>
    </nav> 
    
     <%HttpSession mysession=request.getSession(false);
			String app_user=(String)mysession.getAttribute("app_user");%>
					
	<div class="container-fluid">
	<div class="row" style="margin-top:50px; ">
			<div class="col-sm-12" >
                <div id="myCarousel" class="carousel slide " data-ride="carousel" >
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                      <li data-target="#myCarousel" data-slide-to="1"></li>
                      <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                      <div class="item active">
                        <img src="img10.jpg" alt="Los Angeles" style="width:100%; height:400px">
                      </div>
                
                      <div class="item">
                        <img src="img1.jpg" alt="Chicago" style="width:100%; height:400px">
                      </div>
                      <div class="item">
                        <img src="img3.jpg" alt="City" style="width:100%; height:400px">
                      </div>
                    </div>
                
                  </div>
            </div>	
			</div>
	
	</div>
	
    
	
			<div class="container-fluid " style="margin-top:10px;">
			<div class="row">
			<div class="col-md-5">
			<img src="img11.jpg" alt="City" style="width:100%; height:300px">
			</div>
			<div class="col-md-7" >
			<h1><b>About the Institute</b></h1><br>
			<p>Institutions stand as indestructible forces against human liberty, irrefrangible to any conflict of values from the individual. Such conflict can undermine authoritarian power and control, however it is the institution that will prevail in this contention. Ken Kesey's One Flew Over the Cuckoo's Nest illustrates this attempt for human liberation and the consequences of challenging the institution. Florian van Donnersmark's 2006 film The Lives of Others highlights the potential for this contradiction of values to amputate the liberties of the individual, and how authoritarian figures within the structure can utilise their level of power to disrupt institutional ideals. Ultimately, it is the challenging of the institution that leads to loss of liberty and individual power.The institution appears to provide a beneficial service to society, however contests from those subjected to the structure unmask the realities of institutional power. Ken Kesey's One Flew Over the Cuckoo's Nest exposes the treatment of individuals to produce docile and submissive products to institutional values, and attempts to rebel against this production. </p>
			</div>
			</div>
			<div class="container" style="margin-top:10px;">
    <div class="row">
       
       <div class="col-md-4" id="a">
       <h2><b>Labs</b></h2>
       <p>Fostering innovations and advancing skills for a better tomorrow. of values from the individual. Such conflict can undermine authoritarian power and control, however it is the institution that will prevail in this contention</p>
       <div class="row">
       <div class="col-md-8"></div>
		<div class="col-md-3">
		<form  action="#">
		<button  class="btn btn-primary btn-block" type="button">View</button>
		</form>
		</div>
       </div>
       
       </div>
       <div class="col-md-4 " id="b">
       <h2><b>Placements</b></h2>
       <p>Realizing what you are good at starts with finding what you're passionate.Such conflict can undermine authoritarian power and control, however it is the institution that will prevail in this contention</p>
       <div class="row">
       <div class="col-md-8"></div>
		<div class="col-md-3">
		<form  action="#">
		<button  class="btn btn-primary btn-block" type="button">View</button>
		</form>
		</div>
       </div>
       </div>
	
	<div class="col-md-4 " id="c">
       <h2><b>Achievements</b></h2>
       <p>Every achievement is a servitude.It compels us to a higher achievement.Such conflict can undermine authoritarian power and control, however it is the institution that will prevail in this contention</p>
       <div class="row">
       <div class="col-md-8"></div>
		<div class="col-md-3">
		<form  action="#">
		<button  class="btn btn-primary btn-block" type="button">View</button>
		</form>
		</div>
       </div>
       </div>
	</div>
  </div>
	
        </div>
		
		<div class="container">
		
		<div class="row" style="margin-top:10px;">    
		<div class="col-sm-4" id="aa">
		 <img src="img6.jpg" alt="Los Angeles" style="width:100%; height:220px;">
		 <p > An institute is an organisation body created for a certain purpose.An institute is an organisation body created for a certain purpose. They are often research organisations (research institutes) created to do research on specific topics.An institute is an organisation body created for a certain purpose. They are often research organisations (research institutes) created to do research on specific topics, or can also be a professional body.</p>
		 <form  action="article.do" method="post">
                
                 <c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Er}</font>
				</c:if>
				
				<font color="green" size="3">${requestScope.suc }</font>
                    
                    <div class="form-group" >
                      <input type="text" class="form-control" id="articleid" name="articleid" placeholder="Article Id" required>
                    </div>
                    
                   <div class="form-group" >
                      <input type="text" class="form-control" id="instituteid" name="instituteid" placeholder="Institute Id" required>
                    </div>
                    
                    <div>
                      <input type="file" id="file" name="file" placeholder=" Article" required>
                    </div>
                    <hr>
                    <div>
                    <button type="submit" class="btn btn-success btn-block">Submit
                    </button>
                    </div>
                    
                   </form>
                   </div>
                   
           <div class="col-md-4" id="bb">
		 <img src="img8.jpg" alt="Los Angeles" style="width:100%; height:300px;">
		 <p >  An institute is an organisation body created for a certain purpose. They are often research organisations (research institutes) created to do research on specific topics.An institute is an organisation body created for a certain purpose. They are often research organisations (research institutes) created to do research on specific topics, or can also be a professional body.</p>
		 <form  action="update.do" method="post">
                
                <c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.E}</font>
		</c:if>
		<font color="green" size="3">${requestScope.succ }</font>
                    <div class="form-group">
                      <input type="text" class="form-control" id="institute"  name="institute" placeholder="Institute Id" required>
                    </div>
                    
                    <div class="form-group" >
                      <input type="text" class="form-control" id="course" name="course" placeholder="Number of Course" required>
                    </div>
                      <button type="submit" class="btn btn-success btn-block btn-md">Submit
                    </button>
                   </form>
                   </div>
                   
          <div class="col-md-4" id="cc" >
		 <img src="img7.jpg" alt="Los Angeles" style="width:100%; height:150px;">
		 <p >  An institute is an organisation body created for a certain purposeAn institute is an organisation body created for a certain purpose. They are often research organisations (research institutes) created to do research on specific topics, or can also be a professional body.</p>
		  <form  action="response.do" method="post">
                
                 <c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Errr}</font>
		</c:if>
                    <font color="green" size="3">${requestScope.sss }</font>
                    <div class="form-group" >
                      <label for="response" > Response Id</label>
                      <input type="text" class="form-control" id="response" name="response" placeholder="Response Id" required>
                    </div>
                    
                    <div class="form-group" >
                      <label for="message" > Message</label>
                      <input type="text" class="form-control" id="message" name="message" placeholder="Message" required>
                    </div>
                    
                    <div class="form-group" >
                      <label for="studentid" >Student ID</label>
                      <input type="text" class="form-control" id="studentid" name="studentid" placeholder="Student ID" required>
                    </div>                    
                    
                    <div class="form-group" >
                      <label for="instituteid" > Institute Id</label>
                      <input type="text" class="form-control" id="instituteid" name="instituteid" placeholder="Institute Id" required>
                    </div>                    
                    <button type="submit" class="btn btn-success btn-block">Submit
                    </button>
                   </form>
                   </div>
       
		</div>
		
		<div class="row" style="margin-top:10px;">
		 <div class="col-sm-4" id="dd" >
		<img src="img4.jpg" alt="Los Angeles" style="width:100%; height:200px;">
		 <p style="padding-left:5px;"> An institute is an organisation body created for a certain purpose. They are often research organisations (research institutes) created to do research on specific topics, or can also be a professional body.</p>
		 <form action="studdetails.do" method="post" style="padding-left:5px;">
		 <button type="submit" class="btn btn-success btn-block">View Student</button>
		 </form>
		</div>
		<div class="col-sm-4" id="ee" style="padding-left:5px;">
		<img src="img11.jpg" alt="Los Angeles" style="width:100%; height:200px;">
		 <p style="padding-left:5px;"> An institute is an organisation body created for a certain purpose. They are often research organisations (research institutes) created to do research on specific topics, or can also be a professional body.</p>
		 <form action="faculty.do" method="post" style="padding-left:5px;">
		 <button type="submit" class="btn btn-success btn-block"> View Faculty </button>
		 </form>
		</div>
		
		<div class="col-sm-4" id="ff" style="padding-left:5px;">
		<img src="img5.jpg" alt="Los Angeles" style="width:100%; height:200px;">
		 <p style="padding-left:5px;"> An institute is an organisation body created for a certain purpose. They are often research organisations (research institutes) created to do research on specific topics, or can also be a professional body.</p>
		 <form action="view_request.do" method="post" style="padding-left:5px;">
		 <button type="submit" class="btn btn-success btn-block"> View Request </button>
		  <div>
    <a href="view_feedback.do">View Feedback</a>
    </div>
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