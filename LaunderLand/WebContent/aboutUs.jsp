<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

<title>About Us</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
body {
	font: 20px Montserrat, verdana;
	line-height: 1.8;
	color: #f5f6f7;
}

p {
	font-size: 16px;
}

.margin {
	margin-bottom: 45px;
}

.bg-1 {
	background-color: white; /* Green */
	color: black;
}

.bg-2 {
	background-color: #072A65; /* Dark Blue */
	color: #ffffff;
}

.bg-3 {
	background-color: #ffffff; /* White */
	color: #555555;
}

.bg-4 {
	background-color: white;
	color: Black;
}
.bg-5 {
	background-color: #AED6F1;
	color: Black;
}
.container-fluid {
	padding-top: 70px;
	padding-bottom: 70px;
}

</style>
</head>
<body>

	<header>
		<nav
			class="navbar navbar-expand-sm bg-primary navbar-dark justify-content-end fixed-top"
			style="font-size: 1.2em; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">

			<ul class="navbar-nav">
			    <li class="nav-item active" style= "padding-right:20px;">
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
	<br>


	<!-- First Container -->
	<div class="container-fluid bg-1 text-center">
		<h3 class="margin" style="color: #0645AE">History of Launder Land</h3>
		<p>The foundation for Launder Land started over 25 years ago, when
			Launder Land Co Founder started spending his major career in his life
			on laundry business at Taif City, Saudi. Fast forward to early 2009
			migrated to Sri Lanka and started discussing with another co founder
			about laundry segment and changing the way of consumers about
			clothing care in Sri Lanka; Subsequently Launder Land founded in
			Colombo and started spreading wings on laundry services</p>

	</div>

	<!-- Second Container -->
	<div class="container-fluid bg-2 text-center">
		<h3 class="margin">About Launder Land..</h3>
		<p>Launder Land in the services of make you look good by offering
			clothing care to provide one simple, consistent, high-quality
			solution to take care of everything in your closet Launder Land team
			are very proud of the service we have created by remembering customer
			satisfaction is best strategic of any business</p>
		<br> <img src="images/abt.gif"
			class="img-responsive img-circle margin" style="display: inline"
			width="300" height="300">
	</div>
	<!-- Third Container (Grid) -->
	<div class="container-fluid bg-3 text-center">
		<h2 class="margin">Why Launder Land?</h2>
		<br>
		<div class="row">
			<div class="col-sm-4">
				<h3>Dry Cleaning Service</h3>
				<p>Launder Land team strongly believes that the real value lies
					only in client’s long lasting relationship..</p>
				<br> <br> <img src="images/icon2-c.png"
					class="img-responsive margin" style="display: inline" alt="Image">
			</div>

			<div class="col-sm-4">
				<h3>Commercial Laundry</h3>
				<p>Launder Land team work with principles of Trust and
					Transparency in all business deals wihich makes us unique in the
					industry..</p>
				<br> <img src="images/icon6-c.png"
					class="img-responsive margin" style="display: inline" alt="Image">
			</div>

			<div class="col-sm-4">
				<h3>Steam Iron Service</h3>
				<p>Get Wash committed to deliver Landry services beyond customer
					satisfaction.</p>
				<br> <br> <img src="images/icon1-c.png"
					class="img-responsive margin" style="display: inline" alt="Image">
			</div>
		</div>
	</div>

	<!-- forth Container -->
	<div class="container bg-4 text-center">
		<div  class="container bg-5 text-center">

			<h2 class="margin" style="color:#0645AE">Mission & Vision</h2>
			<div class="col-sm-6">
				<h3>Mission</h3>
				<p>To bring utmost good satisfaction to our clients by offering
					hassle free services at competitive price</p>
				<br> <img src="images/mission.png" style="display: inline">
			</div>
			<div class="col-sm-6">
				<h3>Vision</h3>
				<p>We will be preferred choice to all the clients and business
					partners in the industry through our core values of trust and
					transparency</p>
				<img src="images/vision.png" style="display: inline">
			</div>

		</div>

		<br> <br> <br>
		<footer>

			<hr width="100%">
			<table style="width: 80%;" align="center">
				<tr>
					<td>
						<p>
							LAUNDER LAND(Pvt)Ltd <br> No.455 <br>Kaduwela.<br>
							Sri Lanka
						</p>
					</td>
					<td>
						<p>
							HotLine: +9411 2777777<br>Phone: +9411 2533589<br>E-mail:
							contact_us@launderland.com <br>
					</td>
					<td>
						<p>Find Us On,</p>
						<div class="">
							<a href="https://www.facebook.com/" target="blank"><img
								class="social" title="facebook" src="images/facebook.png"
								alt="Facebook" width="30px"></a> <a
								href="https://www.instagram.com/" target="blank"><img
								class="social" title="instagram" src="images/instagram.png"
								alt="Instagram" width="30px"></a> <a
								href="https://www.twitter.com/" target="blank"><img
								class="social" title="twitter" src="images/twitter.png"
								alt="twitter" width="30px"></a>
						</div>
					</td>
				</tr>
			</table>
			<hr width="100%">
			<center>
				<img class="" src="images/logo.png" width="220px" alt="logo">
			</center>
			<p align="center">
				Copyright 2020 @ Launder Land <br>All rights reserved <br>Website
				Developed and Designed by SE/OOP/B5/G21
			</p>

		</footer>
	</div>
</body>
</html>