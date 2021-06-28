

<!DOCTYPE html>  
  
<html>  
<head>  
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>View Users</title>  
</head>  
<style>
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
   #customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    
   margin-left: 30px;
   margin-right: 30px;
   margin-top: 1vh;
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: chocolate;
  color: white;
} 
      a {
  text-decoration: none;
  display: inline-block;
  padding: 8px 16px;
}

a:hover {
  background-color: #ddd;
  color: black;
}

.previous {
  background-color: #f1f1f1;
  color: black;
}
   
    
    </style>
<body>  
  
<%@page import="jspcrudpkg.jspcruddb,jspcrudpkg.user,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
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
 
<div class="sign"><h2><b>CUSTOMER_LIST</b></h2></div>
  <a href="adminpage.jsp" class="previous">&laquo; Previous</a>
<%  
List<user> list=jspcruddb.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table id="customers">  
<tr><th>Id</th>
    <th>Fullname</th>
    <th>Address</th>
    <th>Phonenumber</th>  
    <th>Username</th>
    <th>Password</th>
    <th>Edit</th>
    <th>Delete</th>
</tr>  
<c:forEach items="${list}" var="e">  
<tr><td>${e.getId()}</td>
    <td>${e.getFullname()}</td>
    <td>${e.getAddress()}</td>  
    <td>${e.getPhone()}</td>
    <td>${e.getUname()}</td>
    <td>${e.getPassword()}</td>  
    <td><a href="editform.jsp?id=${e.getId()}">Edit</a></td>  
    <td><a href="deleteuser.jsp?id=${e.getId()}">Delete</a></td>
</tr>  
</c:forEach> 

</table> 
 

<br/>

<p><a href="signupp.jsp" class="w3-button w3-red">Add_coustomer</a></p>
   
</body>  
</html>  



  

