<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%--Importing all the dependent classes--%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Price"%>
<%@page import="java.util.Iterator"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard | Lauder Land</title>
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

			<div class="col-sm-10">
				<div>
					<h1 align="center">Our Pricing</h1>
					<a class="btn btn-primary"
						href="<%=request.getContextPath()%>/createPrice.jsp"> Add New</a><br />
					<br />
					<table style="width: 100%" border="0" cellpadding=10%
						align="center">
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

							<%--Assigning ArrayList object containing Price data to the local object --%>
							<%
								ArrayList<Price> priceList = (ArrayList) request.getAttribute("prList");
							%>

							<%
								// <%-Iterating through PriceList

								// Null check for the object
							if (request.getAttribute("prList") != null) 
							{
								// Set Iterator interface
								Iterator<Price> iterator = priceList.iterator(); 
								String color = "#e6f0ff";
								
								// iterate through all the data until the last record
								while (iterator.hasNext()) 
								{
									//assign individual price record to the price class object
									Price priceDetails = iterator.next(); 
							%>
							<tr style="background-color:<%=color%>">
								<td><%=priceDetails.getItem_code()%></td>
								<td><%=priceDetails.getItem_name()%></td>
								<td><%=priceDetails.getOneday()%></td>
								<td><%=priceDetails.getTwo_days()%></td>
								<td><%=priceDetails.getThree_days()%></td>
								<td><%=priceDetails.getExpress()%></td>
								<td><%=priceDetails.getUrgent()%></td>
								<td><a class="btn btn-primary" style="width: 100%;"
									href="<%=request.getContextPath()%>/priceServlet?icode=<%=priceDetails.getItem_code()%>&iname=<%=priceDetails.getItem_name()%>">
										Edit</a></td>
							</tr>
							<% if (color == "#e6f0ff") color = "#ffe6e6";else color = "#e6f0ff";
								}
							}
							%>
						</tbody>
					</table>
				</div>

			</div>
		</div>
	</div>
</body>
</html>