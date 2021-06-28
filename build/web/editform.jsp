

<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Edit Form</title>  
</head>
<style>
    
    .top{
        
        width: 90%;
        height: 12vh;
        background-color: chocolate;
        color: black;
        text-align: center;
        font-family: sans-serif;
        text-shadow:  5px 10px 30px rgba(0,0,0,0.7);
        padding-top: 5px;
        padding-bottom: 5px;
        margin-left: 5%;
    }

 .top1{
        margin-top: 5px;
        width: 90%;
        height: 8vh;
        background-color: chocolate;
        color: black;
        text-align: center;
        font-family: sans-serif;
        text-shadow:  5px 10px 30px rgba(0,0,0,0.7);
        padding-top: 3px;
        padding-bottom: 3px;
        margin-left: 5%;
    }
     .order
    {
        width: 100%;
        height: 8vh;
        font-family: sans-serif;
        background-color: white;
        text-align: center;
        color: chocolate;
        padding-top: 10px;
        
        
    }
     .ohead
    {
        width: 50%;
        height: 140vh;
        border:none;
	   border-radius:5px;
	   box-shadow: 0 0px 10px 0 rgba(0,0,0,0.9);
        padding-left: 20px;
        padding-top: 20px;
        padding-bottom: 20px;
        margin-left: 25%;
         margin-top: 40px;
    }
    
    
     .title
{
    float: left;
	width:60%;
	height:auto;
	padding:10px;
	margin-left:15%;
	margin-top:4%;
	border:none;
	border-radius:5px;
	box-shadow: 0 0px 10px 0 rgba(0,0,0,0.2);
   

}
    
</style>




<body>  
<%@page import="jspcrudpkg.jspcruddb,jspcrudpkg.user"%>  
  
<%  
String id=request.getParameter("id");  
user e=jspcruddb.getCustomerById(Integer.parseInt(id));  
%>  
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="home.htmi">Home</a></li>
         <li class="active"><a href="house.html">House</a></li>
         <li class="active"><a href="price.html">Price</a></li>
         <li class="active"><a href="index.jsp">Logout</a></li>
         <li class="active"><a href="index.jsp">Login</a></li>
         <li class="active"><a href="signupp.jsp">Signup</a></li>
         <li class="active"><a href="admin.html">Admin</a></li>
      
    </ul>
  </div>
</nav>
<div class="top"><h1><b>CAKEHOUSE</b></h1></div>  
<div class="top1"><h3><b>ADMIN_MANAGEMENT_EDIT_FORM</b></h3></div>


<div class="item" >
             <div class="ohead">
        <div class="orderr">
<form action="edituser.jsp" method="post">  
<input type="hidden" name="id" value="<%=e.getId() %>"/>  


<div class="title"><h3><b>FULLNAME</b></h3></div>                

<input type="text" name="fullname" class="title" value="<%= e.getFullname()%>"/>
<div class="title"><h3><b>ADDRESS</b></h3></div> 
<input type="text" name="address" class="title" value="<%= e.getAddress()%>"/> 
<div class="title"><h3><b>PHONE_NUMBER</b></h3></div> 
<input type="text" name="phone" class="title" value="<%= e.getPhone()%>"/>
<div class="title"><h3><b>USERNAME</b></h3></div> 
<input type="text" name="uname" class="title"  value="<%= e.getUname()%>"/>
<div class="title"><h3><b>PASSWORD</b></h3></div>  
<input type="password" name="password" class="title" value="<%= e.getPassword()%>"/>
 <div class="w3-container">
  
  <p><a href="viewuser.jsp" class="w3-button w3-blue">EDITED USERS</a></p>
  
            </div>
 
  
</form>  
  
</body>  
</html>  


