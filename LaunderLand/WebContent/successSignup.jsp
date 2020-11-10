<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/png" href="Images/icon.png">
<title>Registered | Launder Land</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="Styles/homeStyle.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<header>
<nav class="navbar navbar-expand-sm bg-primary navbar-dark justify-content-end fixed-top" style= "font-size:1.2em;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
  <ul class="navbar-nav">
    <li class="nav-item" style= "padding-right:20px;">
      <a class="nav-link" href="index.jsp">HOME</a>
    </li>
    <li class="nav-item" style= "padding-right:20px;">
      <a class="nav-link" href="<%=request.getContextPath()%>/PriceListForCustomerServlet">PRICE LIST</a>
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
<br><br>
<br>

<div class= "container-fluid banner">
	<div class= "container-lg pt5">
	<br><br><br><br>
	<h1 style= "">Thank you for Registering with our Web!</h1> <br>
	<a href = "login.jsp"><button class =  "btn btn-outline-primary"><spin class= "spinner-grow spinner-grow-sm"></spin>Click here to start your journey</button></a>
	</div>
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