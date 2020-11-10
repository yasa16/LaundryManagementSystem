<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
   
    .row.content {height: 620px}
    
   
    .sidenav {
      background-color: #e6e6ff;
      height: 100%;
      font-weight: 700;
    }
        
    
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
    

  </style>
</head>
<body>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-2 sidenav hidden-xs">
      <div style="margin:10px 0"><img src="images/logo.png" width="200px" alt="logo"></div>
      <ul class="nav nav-pills nav-stacked">
       	<li><a href="<%=request.getContextPath()%>/DashbordServlet">Dashboard</a></li>
		<li><a href="<%=request.getContextPath()%>/OurUsers">View Users</a></li>
		<li><a href="<%=request.getContextPath()%>/OurOrders">Order Management</a></li>
		<li><a href="<%=request.getContextPath()%>/OurPriceList">Manage Laundry Price</a></li>
		<li><a href="emp-list.jsp">Employee Management</a></li>
		<li><a href="enquiry.jsp">View Customer Inquiry</a></li>
        <li><a href="<%=request.getContextPath()%>/Update_Admin_Servlet">Edit Profile</a></li>
        <li><a href="<%=request.getContextPath()%>/Logout">Logout</a></li>
      </ul><br>
    </div>
   
    <div class="col-sm-10 text-center">      
		 	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
	<div class="col-sm-4"></div>
	<div class="col-sm-4">	
		<div style="width: 85px;  margin: 0 auto;"><img src="images/profile.png" alt="profile" style="width:85px;height:85px"> </div>
		<h1 style="text-align: center;">Admin Profile</h1>
		 <form action = "update" method = "post">
			<div class="form-group mt-3">  
				Admin ID : <br>
			    <input type ="text" class="form-control" name = "adminID" value = "<%= id %>" readonly>
			   
			   	Name : <br>
			    <input type ="text" class="form-control" name = "name" value = "<%= name %>">
			    
			    Email : <br>
			    <input type ="email" class="form-control" name = "email" value = "<%= email %>">
			    
			    Phone Number : <br>
			    <input type ="text" class="form-control" name = "phone" value = "<%= phone %>">
			    
			    User Name : <br>
			    <input type ="text" class="form-control" name = "uname" value = "<%= userName %>">
			    
			    Password : <br>
			    <input type ="password" class="form-control" name = "pass" value = "<%= password %>"> 
				<br>
				<input type="submit" class="btn btn-primary" value ="Update" width ="500px"><br>
			</div>
		</form>
	</div>
</div>>

</body>
</html>