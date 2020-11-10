<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard | Launder Land</title>
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

h1 {
	font-weight: 700;
}

.tile {
	box-shadow: 3px 3px black;
	border-radius: 2px;
	text-align: center;
	font-size: 32px;
	font-weight: 900;
	color: white;
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
					<img src="Images/logo.png" width="200px" alt="logo">
				</div>
				<ul class="nav nav-pills nav-stacked">
					<li><a href="<%=request.getContextPath()%>/DashbordServlet">Dashboard</a></li>
					<li><a href="<%=request.getContextPath()%>/OurUsers">View Users</a></li>
					<li><a href="<%=request.getContextPath()%>/OurOrders">Order Management</a></li>
					<li><a href="<%=request.getContextPath()%>/OurPriceList">Manage Laundry Price</a></li>
					<li><a href="emp-list.jsp">Employee Management</a></li>
					<li><a href="enquiry.jsp">View Customer Inquiry</a></li>
					<li><a
						href="<%=request.getContextPath()%>/Update_Admin_Servlet">Edit
							Profile</a></li>
					<li><a href="<%=request.getContextPath()%>/Logout">Logout</a></li>
				</ul>
				<br>
			</div>

			<div class="col-sm-10"
				style="background-image: url(Images/price1.jpg); height: 100%">

				<div class="row" style="margin-top: 10%;">
					<div class="col-sm-3">
						<div class="well tile" style="background-color: #fc3158;">
							<h1>Total</h1>
							<h1>Inquires</h1>
							<span style="font-size: 60px">${dashboadData.getInquires()}</span>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="well tile" style="background-color: #53d769;">
							<h1>Processing</h1>
							<h1>Inquires</h1>
							<span style="font-size: 60px">${dashboadData.getprocessingInquires()}</span>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="well tile" style="background-color: #147efb;">
							<h1>Total</h1>
							<h1>Orders</h1>
							<span style="font-size: 60px">${dashboadData.getTotalOrders()}</span>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="well tile" style="background-color: #2a2727;">
							<h1>Pending</h1>
							<h1>Orders</h1>
							<span style="font-size: 60px">${dashboadData.getpendingOrders()}</span>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>


</body>
</html>