<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
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
					<img src="images/logo.png" width="200px" alt="logo">
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

			<div class="col-sm-10">
				<nav class="navbar navbar-expand-md navbar-dark "
					style="background-color: #012E88">
					<div class="navbar-brand">
						<a style="font-size: 25px">Employee Management</a>
					</div>

					<ul class="navbar-nav">
						<li><a href="<%=request.getContextPath()%>/list"
							class="nav-link">Show Employee List</a></li>
					</ul>

				</nav>




				<br>
				<div class="row d-flex justify-content-center">
					<div class="container col-md-6">

						<div class="card">
							<div class="card-body">
								<c:if test="${employee != null}">
									<form action="updateEmp" method="post">
								</c:if>
								<c:if test="${employee == null}">
									<form action="insertEmp" method="post">
								</c:if>

								<caption>
									<h2>
										<c:if test="${employee != null}">
                              Edit Employee
                              
                              </c:if>
										<c:if test="${employee == null}">
                              Add New Employee
                              </c:if>

									</h2>
								</caption>

								<c:if test="${employee != null}">
									<input type="hidden" name="id"
										value="<c:out value='${employee.id}'/>" />
								</c:if>

								<fieldset class="form-group">
									<label>Name</label> <input type="text"
										value="<c:out value='${employee.name}'/>" class="form-control"
										name="name" required="required">

								</fieldset>

								<fieldset class="form-group">
									<label>Email</label> <input type="text"
										value="<c:out value='${employee.email}'/>"
										class="form-control" name="email">

								</fieldset>

								<fieldset class="form-group">
									<label>Career Type</label> <input type="text"
										value="<c:out value='${employee.career_type}'/>"
										class="form-control" name="career_type">

								</fieldset>

								<center>
									<button type="submit" class="btn btn-outline-info">SAVE</button>
									</form>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>

	</div>

</body>
</html>