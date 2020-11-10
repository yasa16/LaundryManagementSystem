<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Inquiry Data</title>

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
    
    <%--Getting enquiry data from database to the table--%>
    
    <div class="col-sm-10" height: 100%">
    
    <center><h3 style = "background-color:#94d1ff;"> CUSTOMER ENQUIRIES </h3><center/>
 
	<table border ="1" width = "100%" style = "background-color:#bffffe;">
	
	<tr>
	<th>Enquiry ID</th>
	<th>Customer name</th>
	<th>Payed bill no</th>
	<th>Customer address</th>
	<th>Customer phone</th>
	<th>Customer email</th>
	<th>Complaint type</th>
	<th>Complaint description</th>
	<th>Complaint status</th>
	<th>Update</th>
	<th>Delete</th>
	</tr>
	
	<c:forEach var="admin" items="${enqDetails}">
	
	<c:set var = "id" value = "${admin.enq_id}"/>
	<c:set var = "name" value = "${admin.name}"/>
	<c:set var = "bill_no" value = "${admin.bill_no}"/>
	<c:set var = "address" value = "${admin.address}"/>
	<c:set var = "phone" value = "${admin.phone}"/>
	<c:set var = "email" value = "${admin.email}"/>
	<c:set var = "type" value = "${admin.type}"/>
	<c:set var = "description" value = "${admin.description}"/>
	<c:set var = "status" value = "${admin.status}"/>
	
	<tr>
		
		<td>${admin.enq_id}</td>
	
		<td>${admin.name}</td>
	
		<td>${admin.bill_no}</td>

		<td>${admin.address}</td>

		<td>${admin.phone}</td>

		<td>${admin.email}</td>

		<td>${admin.type}</td>

		<td>${admin.description}</td>

		<td>${admin.status}</td>
		
		<td>
		
		<c:url value = "updateenquiry.jsp" var = "enqupdate">
			<c:param name="id" value = "${id}"></c:param>
			<c:param name="name" value = "${name}"></c:param>
			<c:param name="bill_no" value = "${bill_no}"></c:param>
			<c:param name="address" value = "${address}"></c:param>
			<c:param name="phone" value = "${phone}"></c:param>
			<c:param name="email" value = "${email}"></c:param>
			<c:param name="type" value = "${type}"></c:param>
			<c:param name="description" value = "${description}"></c:param>
			<c:param name="status" value = "${status}"></c:param>
		</c:url>
		
		<br/>
		<a href = "${enqupdate}">
		<input type = "submit" name = "update" value = "Update Status">
		</a><br/><br/>
		
		</td>
		
		<td>
			
		<c:url value = "deleteenquiry.jsp" var = "enqdelete">
			<c:param name = "id" value = "${id}"></c:param>
			<c:param name = "name" value = "${name}"></c:param>
			<c:param name = "bill_no" value = "${bill_no}"></c:param>
			<c:param name = "address" value = "${address}"></c:param>
			<c:param name = "phone" value = "${phone}"></c:param>
			<c:param name = "email" value = "${email}"></c:param>
			<c:param name = "type" value = "${type}"></c:param>
			<c:param name = "description" value = "${description}"></c:param>
			<c:param name = "status" value = "${status}"></c:param>
		</c:url>
		
		<br/>	
		<a href = "${enqdelete}">
		<input type = "submit" name = "delete" value = "Delete Enquiry">
		</a><br/><br/>
			
		</td>
		
	</tr>
	
	</c:forEach>
	</table>
	
    </div>
  </div>
</div>

</body>
</html>