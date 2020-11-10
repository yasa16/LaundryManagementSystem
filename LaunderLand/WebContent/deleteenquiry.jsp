<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
      
    h1
    {
     font-weight: 700;
    }
    
    .tile
    {
	    box-shadow: 3px 3px black;
	    border-radius: 2px;
	    text-align: center;
	    font-size: 32px;
	    font-weight:900;
	    color: white;
    }
    
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
    
   
    
  </style>

</head>
<body>

<%--Dashboard styling--%>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-2 sidenav hidden-xs">
      <div style="margin:10px 0"><img src="Images/logo.png" width="200px" alt="logo"></div>
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
    
    <%--Delete enquiry form--%>
    
    <div class="col-sm-10" height: 100%">
    
	<% 
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String bill_no = request.getParameter("bill_no");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String type = request.getParameter("type");
		String description = request.getParameter("description");
		String status = request.getParameter("status");
	%>
	
	<h3 style = "background-color:#94d1ff;">Delete enquiry</h3>
	
	<fieldset style = "background-color:#bffffe;"><br/><br/><br/>
	<form action = "deleteEnq" method = "post" style = "padding-left:30px;">
		Enquiry ID : <input type = "text" name = "enqID" value = "<%= id %>" readonly><br/><br/>
		Customers' name : <input type = "text" name = "name" value = "<%= name %>" readonly><br/><br/>
		Payed bill no : <input type = "text" name = "billNo" value = "<%= bill_no %>" readonly><br/><br/>
		Customers' address : <input type = "text" name = "address" value = "<%= address %>" readonly><br/><br/>
		Customers' phone : <input type = "text" name = "phone" value = "<%= phone %>" readonly><br/><br/>
		Customers' email : <input type = "text" name = "email" value = "<%= email %>" readonly><br/><br/>
		Enquiry type : <input type = "text" name = "type" value = "<%= type %>" readonly><br/><br/>
		Enquiry Description : <input type = "text" name = "description" value = "<%= description %>" readonly><br/><br/>
		Enquiry Status : <input type = "text" name = "status" value = "<%= status %>" readonly><br/><br/>
		
		<input type = "submit" name = "delete" value = "Delete enquiry">
		<br/><br/><br/><br/>
	</form>
	</fieldset>

    </div>
  </div>
</div>

</body>
</html>