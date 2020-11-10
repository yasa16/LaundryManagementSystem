<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/png" href="Images/icon.png">
<title>Place Order | Launder Land</title>
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
<br><br>



<br>
<div class= "container-lg pt-5" style= "mrgin-bottom:10px;">

	<h1>Place Your Order!</h1>
	<form action= "normalOrder" method = "post">
	<div class= "form-group">
		<fieldset>
		<legend>Item Details</legend>
		
		<input type = "text" name = "items" placeholder = "Number Of Items*" class="form-control" required> <br>
		<select name = "weight" class="form-control" required>
		<option value = "hidden" disabled selected>Select Approximate Weight*</option>
		<option value = "1kg - 5kg"> 1 kg to 5 kg </option>
		<option value = "5kg - 10kg"> 5 kg to 10 kg </option>
		<option value = "10kg - 15kg"> 10 kg to 15 kg </option>
		<option value = "Over 15kg"> Over 15 kg </option>
		</select>
		<br>
		<select name = "service" class="form-control" required>
		<option value = "hidden" disabled selected>Select required Service*</option>
		<option value = "Wash & Iron"> Wash & Iron </option>
		<option value = "Wash & Fold "> Wash & Fold </option>
		<option value = " Dry Clean"> Dry Clean </option>
		<option value = "All Services"> All Services </option>
		</select>
		</fieldset>
		<fieldset>
		<legend> Pickup Details</legend>
		<input type = "text" name = "location" placeholder = "Pickup Location" class="form-control" required> <br>
		Pickup Date<br>
		<input type = "date" name = "pDate" placeholder = "Pickup Date" class="form-control" required> <br>
		Pickup Time <select name = "pickupTime" class="form-control" required>
		<option disabled selected>Select Pickup Time*</option>
		<option value = "8.00 am - 10.00 am"> 8.00 am to 10.00 am </option>
		<option value = "12.00 pm - 2.00 pm"> 12.00 pm to 2.00 pm </option>
		<option value = "3.00 pm - 6.00 pm"> 3.00 pm to 6.00 pm </option>
		<option value = "6.00 pm - 8.00 pm"> 6.00 pm to 8.00 pm </option>
		</select>
		</fieldset>
		<fieldset>
		<legend>Drop Off Details</legend>
		Drop off Location <input type = "text" name = "dropLoc" placeholder= "Drop Off Location" class="form-control" required> <br>
		Drop off Time <select name = "dropTime" class="form-control" required> 
		<option value = "hidden" disabled selected>Select Drop off Time*</option>
		<option value = "8.00 am - 10.00 am"> 8.00 am to 10.00 am </option>
		<option value = "12.00 pm - 2.00 pm"> 12.00 pm to 2.00 pm </option>
		<option value = "3.00 pm - 6.00 pm"> 3.00 pm to 6.00 pm </option>
		<option value = "6.00 pm - 8.00 pm"> 6.00 pm to 8.00 pm </option>
		</select> 
		Drop off Date<br>
		<input type = "date" name = "dDate" placeholder = "DropOff Date" class="form-control" required> <br>
		</fieldset>
		<textarea placeholder= "Special Requirements*" name= "description" class="form-control"></textarea>
		</div>
		<button type = "submit" name = "submit" value = "Place Order" class= "btn btn-outline-primary">
	    <spin class= "spinner-grow spinner-grow-sm"></spin>Place Order</button><br>
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