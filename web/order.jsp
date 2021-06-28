

<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
    *{
margin:0;
padding:0;
outline:none;
}
    .bck{
        background-color: chocolate;
        color: black;
    }
    .sign
    {
        width: 80%;
        height: 10vh;
        background-color: chocolate;
        color: black;
        font-family: sans-serif;
        text-shadow:  5px 10px 30px rgba(0,0,0,0.7);
        text-align: center;
        padding-top: 5px;
        margin-left: 120px;
        
        
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
        height: 90vh;
        border:none;
	   border-radius:5px;
	   box-shadow: 0 0px 10px 0 rgba(0,0,0,0.9);
        padding-left: 20px;
        padding-top: 20px;
        padding-bottom: 20px;
        margin-left: 25%;
        margin-top: 40px;
    }
    
    .smt
{
	width:20%;
	height:30px;
	margin-top:8%;
	background-color:green;
	color:white;
	float:right;
	margin-right:10%;
	border-radius:5px;
	border:none;
	box-shadow: 0 0px 10px 0 rgba(0,0,0,0.3);
    
    
}

    a
    {
        color: white;
        text-decoration:none;
    }
    
    
   
    </style>
</head>
<body>


  <%
    if ((session.getAttribute("uname") == null) || (session.getAttribute("uname") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("uname")%>
<a href='logout.jsp'>Log out</a>
<%
    }
%>
   


    <nav class="navbar navbar-default">
        <div class="bck">
<div class="container-fluid">
<div class="navbar-header">

<a class="navbar-brand" href="#"><b>CAKEHOUSE</b></a>
</div>
        </div>
<ul class="nav navbar-nav">
<li class="active"><a href="home.html">Home</a></li>
<li class="active"><a href="house.html">House</a></li>
<li class="active"><a href="price.html">Price_Level</a></li>
<li class="active"><a href="home.html">Logout</a></li>
<li class="active"><a href="index.jsp">Login</a></li>
<li class="active"><a href="signupp.jsp">Signup</a></li>
</ul>
</div>
</nav>

<div class="sign"><h2><b>ORDER_HERE</b></h2></div>
    <br>
     <div class="w3-container">
    <p><a href="addorder.jsp" class="w3-button w3-red">Add New Order</a></p>
            </div>
     <div class="item" >
             <div class="ohead">
        <div class="orderr">
    
           <form action="orderr.jsp" method="post"> 
               
            
            
            
            
            <input type="text" name="cakeselect" required placeholder="ENTER CAKE NAME"class="title"/>
       
              
            <input type="text" name="kg" required placeholder="NEEDED KG's"class="title"/>
             
               
            <input type="text" name="quantity" required placeholder="ENTER THE QUANTITY"class="title"/>
        
            
           <input type="date" name="date" required placeholder="Enter the Date" class="title"/>
            
           <input type="time" name="time" required placeholder="Enter the Time" class="title"/>
           
              <input type="text" name="contactno"  length="10" required placeholder="CONTACT_NUMBER" class="title" />  
               
               
            <input type="text" name="uname" required placeholder="USERNAME" value="<%=session.getAttribute("uname")%>" class="title" />
          
             
             <button type="submit" class="smt" name="smt" >SUBMIT</button>
            </form>
            <div class="w3-container">
              
                <p><a href="cvieworder.jsp" class="w3-button w3-blue">view Orders</a></p>
           
  
            </div>

            
</body>
</html>
