<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/png" href="Images/icon.png">
<title>Contact Us | Launder Land</title>
<link href = "CSS/Style.css" rel = "stylesheet" type = "text/css"/>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
</head>
<body>

<%--User interface styling--%>

<header>
<nav class="navbar navbar-expand-sm bg-primary navbar-dark justify-content-end fixed-top" style= "font-size:1.2em;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
  <ul class="navbar-nav" style= "padding-top:12px;" style = "float:left">
    <li class="nav-item active" style= "padding-left:720px;" style =  "padding-right:80px;">
      <a class="nav-link" href="index.jsp" style = "color:#94d1ff" >HOME</a>
    </li>
    <li class="nav-item" style = "padding-left:20px;" style= "padding-right:20px;">
      <a class="nav-link" href="<%=request.getContextPath()%>/PriceListForCustomerServlet"  style = "color:#94d1ff">PRICE LIST</a>
    </li>
    <li class="nav-item" style = "padding-left:20px;" style= "padding-right:20px;">
      <a class="nav-link" href="signup.jsp"  style = "color:#94d1ff">SIGN UP</a>
    </li>
    <li class="nav-item" style = "padding-left:20px;" style= "padding-right:20px;">
      <a class="nav-link" href="login.jsp"  style = "color:#94d1ff">LOGIN</a>
    </li>
    <li class="nav-item" style = "padding-left:20px;" style= "padding-right:20px;">
      <a class="nav-link" href="#"  style = "color:#94d1ff">CONTACT US</a>
    </li>
    <li class="nav-item" style = "padding-left:20px;" style= "padding-right:20px;">
      <a class="nav-link" href="#"  style = "color:#94d1ff">ABOUT US</a>
    </li>
  </ul>
</nav>
</header>

	<br/><br/><br/><br/><br/>
	
<%--Contact us details--%>
	
<div class="container-lg pt-5">

	<fieldset class = "box2" style = "float:left;" style = "paddin:10px;" height = "8%" length = "30%">
		<h3> LAUNDER LAND(Pvt)Ltd </h3>
		<p> Call : +9411 2533589</p>
		<p> Email : contact_us@launderland.com </p><br/>
		<p> LAUNDER LAND(Pvt)Ltd .</p>
		<p> No.455, Kaduwela </p>
		<p> COLOMBO </p>
		<p> Sri Lanka </p><br/>
	</fieldset>
	
<%--Insert enquiry form--%>
	
	<fieldset class = "box2" style = "float:left;" style = "paddin:20px;" height = "8%" length = "30%">
		<h3> SEND YOUR ENQUIRY </h3>
		<form action = "insertEnq" method = "post">
			Customer Name <br/>
			<input type = "text" name = "fullname" placeholder = "Enter your full Name" required><br/><br/>
			Complain bill number <br/>
			<input type = "text" name = "billNo" placeholder = "Enter your payed bill number)" required><br/><br/>
			Customer residence <br/>
			<textarea rows ="4" cols = "40" name = "address" placeholder = "Enter your address" required></textarea><br/><br/>
			Customer Contact Number <br/>
			<input type = "text" name = "phone" placeholder = "Enter your contact number" required><br/><br/>
			Customer Email <br/>
			<input type = "text" name = "email" placeholder = "Enter your email address" required><br/><br/>
			
			Enquiry type <br/>
			<select name = "enquiry type">
				<option>Please select your inquiry type
				<option>General service issue
				<option>Payment issue
				<option>Delivery issue</option>
			</select><br/><br/>
			
			Enquiry Description <br/>
			<textarea rows ="4" cols = "40" name = "description" placeholder = "Type your message here..." required></textarea><br/><br/>
			
			<input type = "checkbox" id = "checko" onchange = "isChecked()">By clicking, I send my enquiry knowing that<br/>the sent enquiry is not editable<br/>
			<input type = "checkbox" id = "checkt" onchange = "isChecked()">I'm not a robot<br/><br/>
			<input type = "submit" value = "Send My Enquiry" name = "submit" id = "subm" disabled>
			
			<script>
			function isChecked() {
				if((document.getElementById("checko").checked) && (document.getElementById("checkt").checked)){
					document.getElementById("subm").disabled = false;
				}
				else {
					document.getElementById("subm").disabled = true;
				}
			}
			</script>
		
		</form>

	</fieldset>
	
	<fieldset class = "box2" style = "float:left;" height = "8%" length = "30%">
		<h3> Follow Us On : </h3>
		<a href = "https://www.facebook.com" target="blank"><img src = "Images/facebook.png" class = "smedia" title = "facebook" alt = "fb" width="50px"></a>
		<a href = "https://www.instagram.com" target="blank"><img src = "Images/instagram.png" class = "smedia" title = "instagram" alt = "insta" width="50px"></a>
		<a href = "https://lk.linkedin.com" target="blank"><img src = "Images/linkedin.png" class = "smedia" title = "linkedin" alt = "linki" width="50px"></a><br/>
		<a href = "https://www.twitter.com" target="blank"><img src = "Images/twitter.png" class = "smedia" title = "twitter" alt = "twt" width="50px"></a>
		<a href = "https://www.youtube.com/" target="blank"><img src = "Images/youtube.png" class = "smedia" title = "youtube" alt = "utube" width="50px"></a>
	</fieldset>

</div>
	
	<br/><br/><br/><br/><br/>
	
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
				<p>Find Us On : </p>
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