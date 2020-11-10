<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Our Price</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


</head>

<body>
	<%@page import="java.util.ArrayList"%>
	<%@page import="model.Price"%>
	<%--Importing all the dependent classes--%>
	<%@page import="java.util.Iterator"%>

	<header>
		<nav
			class="navbar navbar-expand-sm bg-primary navbar-dark justify-content-end fixed-top"
			style="font-size: 1.2em; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
			<ul class="navbar-nav">
				<li class="nav-item active" style="padding-right: 20px;">
				<a class="nav-link" href="index.jsp">HOME</a></li>
				
				<li class="nav-item" style="padding-right: 20px;">
				<a class="nav-link"	href="<%=request.getContextPath()%>/PriceListForCustomerServlet">PRICE LIST</a></li>
					
				<li class="nav-item" style="padding-right: 20px;">
				<a class="nav-link" href="signup.jsp">SIGN UP</a></li>
					
				<li class="nav-item" style="padding-right: 20px;">
				<a class="nav-link" href="login.jsp">LOGIN</a></li>
					
				<li class="nav-item" style="padding-right: 20px;">
				<a class="nav-link" href="customerenquiry.jsp">CONTACT US</a></li>
					
				<li class="nav-item" style="padding-right: 20px;">
				<a	class="nav-link" href="aboutUs.jsp">ABOUT US</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<br>
	<br>
	<br>

	<div class="container">
		<h1 align="center">Our Pricing</h1>
		<table border="1" cellpadding=10% align="center">
			<thead>
				<tr>
					<th>Item No</th>
					<th>Item</th>
					<th>Normal(3 days)</th>
					<th>Two Days</th>
					<th>Oneday</th>
					<th>Express(6 hours)</th>
					<th>Urgent(4hours)</th>

				</tr>
			</thead>
			<tbody>

				<%
					ArrayList<Price> priceList = (ArrayList) request.getAttribute("prList");
				%>
				<%--Assigning ArrayList object containing Price data to the local object --%>

				<%
					// Iterating through subjectList

				if (request.getAttribute("prList") != null) // Null check for the object
				{
					Iterator<Price> iterator = priceList.iterator(); // Iterator interface

					while (iterator.hasNext()) // iterate through all the data until the last record
					{
						Price priceDetails = iterator.next(); //assign individual price record to the price class object
				%>
				<tr>
					<td><%=priceDetails.getItem_code()%></td>
					<td><%=priceDetails.getItem_name()%></td>
					<td><%=priceDetails.getOneday()%></td>
					<td><%=priceDetails.getTwo_days()%></td>
					<td><%=priceDetails.getThree_days()%></td>
					<td><%=priceDetails.getExpress()%></td>
					<td><%=priceDetails.getUrgent()%></td>
				</tr>
				<%
					}
				}
				%>
			</tbody>
		</table>
	</div>
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
						<a href="https://www.facebook.com/" target="blank">
						<img class="social" title="facebook" src="images/facebook.png" alt="Facebook" width="30px"></a>
						
						<a href="https://www.instagram.com/" target="blank">
						<img class="social" title="instagram" src="images/instagram.png" alt="Instagram" width="30px"></a>
						
						<a href="https://www.twitter.com/" target="blank">
					   <img class="social" title="twitter" src="images/twitter.png" alt="twitter" width="30px"></a>
							
							
					</div>
				</td>
			</tr>
		</table>
		<hr width="100%">
		<center>
			<img class="" src="images/logo.png" width="220px" alt="logo">
		</center>
		<p align="center">
			Copyright 2020 @ Launder Land <br>All rights reserved <br>Website Developed and Designed by SE/OOP/B5/G21
			
		</p>
	</footer>
</body>
</html>