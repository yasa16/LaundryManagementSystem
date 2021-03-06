<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%--Importing all the dependent classes--%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Price"%>
<%@page import="java.util.Iterator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Orders | Launder Land</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.row.content {
	height: 620px
}

.sidenav {
	background-color: #e6e6ff;
	height: 100%;
	font-weight: 700;
}

td {
	padding: 2px;
}

@media screen and (max-width: 767px) {
	.row.content {
		height: auto;
	}
}
</style>
</head>
<body>

	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-2 sidenav hidden-xs">
				<div style="margin: 10px 0">
					<img src="images/logo.png" width="200px" alt="logo">
				</div>
				<ul class="nav nav-pills nav-stacked">
					<li><a href="<%=request.getContextPath()%>/DashbordServlet">Dashboard</a></li>
					<li><a href="<%=request.getContextPath()%>/OurUsers">View Users</a></li>
					<li><a href="<%=request.getContextPath()%>/OurOrders">Order Management</a></li>
					<li><a href="<%=request.getContextPath()%>/OurPriceList">Manage Laundry Price</a></li>
					<li><a href="emp-list.jsp">Employee Management</a></li>
					<li><a href="enquiry.jsp">View Customer Inquiry</a></li>
					<li><a href="<%=request.getContextPath()%>/Update_Admin_Servlet">Edit Profile</a></li>
				    <li><a href="<%=request.getContextPath()%>/Logout">Logout</a></li>
				</ul>
				<br>
			</div>
	
		<div class="col-sm-10" height: 100%">
		
		<h3 style = "background-color:#94d1ff;">Order Details</h3>
		
			<table style="width: 100%" border="0" cellpadding=10% align="center">
			<thead>
					<tr style="background-color:#e6f0ff">
						<th>Order ID</th>
						<th>Number of Items</th>
						<th>Approx. Weight</th>
						<th>Pickup Location</th>
						<th>Pickup Date</th>
						<th>Pickup Time</th>
						<th>Service Type</th>
						<th>Order Date</th>
						<th>User ID</th>
						<th>Actions</th>
					</tr>
			</thead>
			
				<c:forEach var ="order" items ="${oList}">
	
				<tbody>
				<tr>
				<td><c:out value= "${order.orderNo}"/> </td>
				<td><c:out value= "${order.itemCount}"/> </td>
				<td><c:out value= "${order.weight}"/></td>
				<td><c:out value= "${order.pickupLoc}"/></td>
				<td><c:out value= "${order.pickupDate}"/> </td>
				<td><c:out value= "${order.serviceType}"/> </td>
				<td><c:out value= "${order.pickupTime}"/> </td>
				<td><c:out value= "${order.orderDate}"/> </td>
				<td><c:out value= "${order.userId}"/> </td>
				<td>
					<form action = "AdminDeleteOrder" method = "get">
						<input type= "hidden" name= "oId" value= "${order.orderNo}">
						<button type= "submit" name = "submit" class= "btn btn-outline-primary" style= "margin-left:10px;">Delete Order</button>
					</form>
				</td>
				
				</tr>
				</c:forEach>
			</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>