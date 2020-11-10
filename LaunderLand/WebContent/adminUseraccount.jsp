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
				<br>
				<br>
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
				<div class="col-sm-4">
					<div>
						<div style="width: 85px; margin: 0 auto;">
							<img src="images/profile.png" alt="profile"
								style="width: 85px; height: 85px">
						</div>
						<h1 style="text-align: center;">Admin Profile</h1>

						<div class="form-group mt-3">
							<h4 class="form-control">
								<b>ID :</b> ${adminDetails.id}
							</h4>
							<h4 class="form-control">Name : ${adminDetails.name}</h4>
							<h4 class="form-control">Email : ${adminDetails.email}</h4>
							<h4 class="form-control">Phone : ${adminDetails.phone}</h4>
							<h4 class="form-control">User Name :${adminDetails.userName}</h4>
							<h4 class="form-control">Password : ${adminDetails.password}</h4>
						</div>
					</div>

					<c:set var="id" value="${adminDetails.id}" />
					<c:set var="name" value="${adminDetails.name}" />
					<c:set var="email" value="${adminDetails.email}" />
					<c:set var="phone" value="${adminDetails.phone}" />
					<c:set var="username" value="${adminDetails.userName}" />
					<c:set var="password" value="${adminDetails.password}" />

					<c:url value="updateAdmin.jsp" var="adminupdate">
						<c:param name="id" value="${id}" />
						<c:param name="name" value="${name}" />
						<c:param name="email" value="${email}" />
						<c:param name="phone" value="${phone}" />
						<c:param name="uname" value="${username}" />
						<c:param name="pass" value="${password}" />
					</c:url>

					<a href="${adminupdate}">
						<center>
							<input type="submit" class="btn btn-primary" value="Edit" width="100%">
						</center>
					</a>
				</div>
			</div>
		</div>
	</div>


</body>
</html>