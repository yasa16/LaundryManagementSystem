<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard | Launder Land</title>
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
   
    <div class="col-sm-10">  
    <div class="col-sm-4"></div>    
		<div class="col-sm-4"> 
		
		<h1 style="text-align: center;">Create Price Details</h1>
	<form action = "insert" method = "post">
			<div class="form-group mt-3">  
				Item Name : <br>
				<input type ="text" class="form-control" name ="name" required="required"> 
			   
				Normal Days :<br>
			    <input type ="text" class="form-control" name ="normal" required="required">
			    
			    Two Days :<br>
				<input type ="text" class="form-control" name ="twodays" required="required">
			    
			    OneDay : <br>
				<input type ="text" class="form-control" name ="oneday" required="required">
				
				Express(6 hours) : <br>
	 			<input type ="text" class="form-control" name ="express" required="required">
	 			
	 			Urgent(4 hours) :<br>
	 			<input type ="text" class="form-control" name ="urgent" required="required">
				<br>
				<center>
				<input type="submit" class="btn btn-primary" value ="Create" width ="500px">
				</center><br>
			</div>
		</form>
  </div>
    </div>

</body>
</html>