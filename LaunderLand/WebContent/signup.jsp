<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="JS/password.js"></script>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/png" href="Images/icon.png">
<title>SignUp</title>
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
    <li class="nav-item active" style= "padding-right:20px;">
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

<div class="container-lg pt-5">
	<h1>Register Yourself Here!</h1>
	<div class= "form-group">
	<form action="signup" method="post">
		First Name <br> <input type="text" name= "first" class="form-control" placeholder= "First Name" required><br>
		Last Name <br> <input type="text" name= "last" class="form-control" placeholder= "Last Name" required><br>
		Email <br> <input type="text" name= "email" class="form-control" pattern="[a-zA-Z0-9%_+-]+@[a-zA-Z]+\.[a-z]{2,3}" placeholder= "abc@gmail.com" required><br>
		Contact Number <br> <input type="text" name= "contact" class="form-control" placeholder= "Contact Number" pattern="[0-9]{10}" required><br>
		User Name <br> <input type="text" name= "userName" class="form-control" placeholder= "User Name" required><br>
		Password <br> <input type="password" name= "pass" id= "pwd" class="form-control" placeholder= "Password" required><br>
		Confirm password <br> <input type="password" name= "repass"  id= "repwd" class="form-control" placeholder= "Re-type the password" required><br> 
		<input type="checkbox" id="chk"> <a href="termsAndConditions.jsp"> Accept terms and conditions</a> 
		<br>
	</div>
		
		<button type = "submit" name = "submit" value = "SignUp" class= "btn btn-outline-primary"><span class="spinner-grow spinner-grow-sm"></span>
		SignUp</button>
	</form>
	<br>
	<br>
	<br>
	<p>Already have an account?</p>
	<a href= "login.jsp"><button value = "Login" class = "btn btn-outline-primary ">
	<span class="spinner-grow spinner-grow-sm"></span>Login</button></a>
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