<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<div class="col-sm-4"></div>
				<div>
					<c:set var="icode" value="${price.item_code}" />
					<c:set var="name" value="${price.item_name}" />
					<c:set var="threedays" value="${price.three_days}" />
					<c:set var="twodays" value="${price.two_days}" />
					<c:set var="oneday" value="${price.oneday}" />
					<c:set var="express" value="${price.express}" />
					<c:set var="urgent" value="${price.urgent}" />

					<div class="col-sm-4">
						<div>
							<h1 style="text-align: center;">Price Details</h1>

							<div class="form-group mt-3">
								<h4 class="form-control">
									<b>Item Code :</b> ${price.getItem_code()}
								</h4>
								<h4 class="form-control">Item Name :${price.getItem_name()}</h4>
								<h4 class="form-control">Three Days :${price.getThree_days()}</h4>
							    <h4 class="form-control">Two Days : ${price.getTwo_days()}</h4>
								<h4 class="form-control">One day : ${price.getOneday()}</h4>
								<h4 class="form-control">Express : ${price.getExpress()}</h4>
								<h4 class="form-control">Urgent : ${price.getUrgent()}</h4>
							</div>
						</div>

						<c:url value="updatePrice.jsp" var="priceupdate">
							<c:param name="item_code" value="${icode}" />
							<c:param name="name" value="${name}" />
							<c:param name="three_days" value="${threedays}" />
							<c:param name="two_days" value="${twodays}" />
							<c:param name="oneday" value="${oneday}" />
							<c:param name="express" value="${express}" />
							<c:param name="urgent" value="${urgent}" />
						</c:url>

						<a href="${priceupdate}">
							<center>
								<input type="submit" class="btn btn-primary" value="Edit" width="10px">
									
						</a>

						<c:url value="deletePrice.jsp" var="pricedelete">
							<c:param name="item_code" value="${icode}" />
							<c:param name="name" value="${name}" />
							<c:param name="three_days" value="${threedays}" />
							<c:param name="two_days" value="${twodays}" />
							<c:param name="oneday" value="${oneday}" />
							<c:param name="express" value="${express}" />
							<c:param name="urgent" value="${urgent}" />
						</c:url>
						<a href="${pricedelete}"> <input type="submit"
							class="btn btn-primary" value="Delete" width="10px">
							</center>
						</a>
					</div>
				</div>
			</div>
		</div>
</body>
</html>