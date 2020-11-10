<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Profile | LaunderLand</title>
<link rel="icon" type="image/png" href="Images/icon.png">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="Styles/homeStyle.css">
<link rel="stylesheet" type="text/css" href="Styles/profileStyle.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%			
		if(session.getAttribute("userId") == null){
			response.sendRedirect("login.jsp");
		}	
	
	%>
	
<header>
<nav class="navbar navbar-expand-sm bg-primary navbar-dark justify-content-end fixed-top" style= "font-size:1.2em;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
  <ul class="navbar-nav">
    <li class="nav-item" style= "padding-right:20px;">
      <a class="nav-link" href="index.jsp">HOME</a>
    </li>
    <li class="nav-item" style= "padding-right:20px;">
      <a class="nav-link" href="#">PRICE LIST</a>
    </li>
    <li class="nav-item" style= "padding-right:20px;">
      <a class="nav-link" href="signup.jsp">SIGN UP</a>
    </li>
    <li class="nav-item" style= "padding-right:20px;">
      <a class="nav-link" href="login.jsp">LOGIN</a>
    </li>
    <li class="nav-item" style= "padding-right:20px;">
      <a class="nav-link" href="customerenquiry.jsp">CONTACT US</a>
    </li>
    <li class="nav-item" style= "padding-right:20px;">
      <a class="nav-link" href="aboutUs.jsp">ABOUT US</a>
    </li>
  </ul>
</nav>
</header>
<br><br><br><br>
	
	<div class= "container-fluid banner">
		<c:forEach var="user" items="${userDetails}">
			<c:set var = "id" value = "${user.userId}"></c:set>
			<c:set var = "userName" value = "${user.uName}"></c:set>
			<c:set var = "fname" value = "${user.fName}"></c:set>
			<c:set var = "lname" value = "${user.lName}"></c:set>
			<c:set var = "email" value = "${user.email}"></c:set>
			<c:set var = "phone" value = "${user.contactNo}"></c:set>
			<c:set var = "password" value = "${user.password}"></c:set>
			<h1 style= "">Welcome back ${user.fName} </h1>	
		</c:forEach>
		
		<div class = "container-lg pt5">
		<h3 style= "">What's Next?</h3>
		<br>
		<form action= "displayUser" method= "post">
			<button type= "submit" name= "edit" class = "btn btn-outline-primary">Edit Your Profile Details</button>
		</form>
		 
		<br>
		<h4 style= "">Need to place an order?</h4>
		<a href = "normalOrder.jsp"><button class = "btn btn-outline-primary">Place Your Order Here!</button></a>
			
		<br>
		
		<br>
		<h4 style= "">Wanna Check your previous orders?</h4>
		<form action= "listOrders" method= "post">
		<button type= "submit" name= "submitbtn" class = "btn btn-outline-primary">Check Your Orders Here!</button>
		</form>
	</div>
	<br>
	<br>
	
	<form action = "ulogout" method = "post">
		<button type = "submit" name = "LogOut" class= "btn btn-outline-primary"><span class= "spinner-grow spinner-grow-sm"></span>Log Out</button>
	</form>
	
	</div>
	
<footer>	
		<hr width="100%">
		<table style="width: 80%;" align="center">
			<tr>
				<td>
					<p>LAUNDER LAND(Pvt)Ltd <br> No.455 <br>Kaduwela.<br> Sri Lanka</p>
				</td>
				<td>
					<p>HotLine: +9411 2777777<br>Phone: +9411 2533589<br>E-mail: contact_us@launderland.com <br>  
				</td>
				<td>
					<p>Find Us On,</p>
					<div class="">
						<a href="https://www.facebook.com/" target="blank"><img class="social" title="facebook" src="Images/facebook.png" alt="Facebook" width="30px"></a>
						<a href="https://www.instagram.com/" target="blank"><img class="social" title="instagram" src="Images/instagram.png" alt="Instagram" width="30px"></a>
						<a href="https://www.twitter.com/" target="blank"><img class="social" title="twitter" src="Images/twitter.png" alt="twitter" width="30px"></a>
					</div>
				</td>
			</tr>
		</table>		
		<hr width="100%">	
			<center><img class="" src="Images/logo.png" width="220px" alt= "logo"></center>
		<p align="center">Copyright 2020 @ Launder Land
			
			<br>All rights reserved
			<br>Website Developed and Designed by SE/OOP/B5/G21
		</p>						
	
</footer>
	
</body>
</html>