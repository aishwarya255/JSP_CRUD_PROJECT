<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.mobile-container {
float: left;
  max-width: 200px;
  margin: auto;padding-right: 20px;
  background-color: #555;
  height: 650px;
  color: white;
  border-radius: 10px;
}

.topnav {
  overflow: hidden;
  background-color: #333;
  position: relative;
}

.topnav #myLinks {
  display: none;
}

.topnav a {
  color: white;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  display: block;
}

.topnav a.icon {
  background: black;
  display: block;
  position: absolute;
  right: 0;
  top: 0;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.active {
  background-color: chocolate;
  color: white;
}
    
    
    .menu{
        float: left;
        margin-left: 50px;
        width:82%;
        height: 10vh;
        background-color: chocolate;
        font-family: sans-serif;
           text-shadow:  5px 10px 30px rgba(0,0,0,0.7);
        text-align: center;
        padding-top: 5px;
        color: black;
        
    }
    
    .psubp
{
    float: left;
	width:60%;
	height:auto;
	margin-left:30%;
	margin-top:3%;
	border-radius:8px;
	box-shadow: 0 0px 20px 10px rgba(0,0,0,0.7);
	
	padding-bottom:4%;	
}
.postp
{
	font-size:22px;
    text-shadow: 5px 10px 30px rgba(0,0,0,0.7);
	font-family:sans-serif;
	text-align:center;
	padding-top:3%;
	padding-bottom:2%;
    color: white;
}
.postsub
{
    float:left;
	width:40%;
	height:auto;
	margin-left:25%;
    margin-top: 10%;
	padding-top:2%;
	padding-bottom:2%;
	border-radius:5px;
	box-shadow: 0 0px 10px 10px rgba(0,0,0,0.4);
	
    
}
 .title
{
	width:80%;
	height:auto;
	padding:10px;
	margin-left:8%;
	margin-top:4%;
        color:black;
	border:none;
	border-radius:5px;
	box-shadow: 0 0px 10px 0 rgba(0,0,0,0.2);
   

}

.smt
{
	width:20%;
	height:40px;
    padding-top: 3px;
	margin-top:4%;
	background-color:white;
	text-align: center;
	float:right;
	margin-right:10%;
	border-radius:5px;
	border:none;
	box-shadow: 0 0px 10px 0 rgba(0,0,0,0.3);
}
.smtl
{
	width:20%;
	height:40px;
    padding-top: 3px;
	margin-top:4%;
	background-color:white;
	
	float:right;
	margin-right:7%;
	border-radius:5px;
	border:none;
	box-shadow: 0 0px 10px 0 rgba(0,0,0,0.3);
}
   
    
    
</style>
</head>
<body>

<!-- Simulate a smartphone / tablet -->
<div class="mobile-container">

<!-- Top Navigation Menu -->
<div class="topnav">
  <a href="house.html" class="active">House</a>
  <div id="myLinks">
    <a href="home.html">Home</a>
    <a href="price.html">Price</a>
    <a href="signupp.jsp">Signup</a>
    <a href="admin.html">Admin</a>
    
  </div>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

<div style="padding-left:16px">
  <h3><b>CAKEHOUSE</b></h3>
  <p>  </p>
  <p>   </p>
</div>

<!-- End smartphone / tablet look -->
</div>

<script>
function myFunction() {
  var x = document.getElementById("myLinks");
  if (x.style.display === "block") {
    x.style.display = "none";
  } else {
    x.style.display = "block";
  }
}
</script>

    
    
    <div class="menu"><h2><b>LOGIN_HERE</b></h2></div>
    
    
     <div class="postp">
	<div class="postsub">
        
       <form method="post" action="login.jsp">
            
            <input type="text" name="uname" value="" placeholder="Username" class="title" />
            <input type="password" name="password" value="" placeholder="Password" class="title" />
            <div class="smt"><input type="submit" class="btn btn-success" value="Login" /></div>
            <div class="smtl"><button type="button" class="btn btn-danger"><a href="signupp.jsp">Signup_Here</a></button></div>
        
       
       
                        
       
       </form>
            
            

	</div>
    </div>
    
</body>
</html>