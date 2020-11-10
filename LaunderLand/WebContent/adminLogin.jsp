<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login | Launder Land</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<%-- <link href ="Style.css" rel ="stylesheet" type ="text/css">--%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
body {
	width: 25%;
	margin: 0 auto;
	margin-top: 5%;
	font-family: Sans-serif;
}
</style>


</head>
<body>
	<%--<img src = "images/login.gif" alt = "accountlogin" class ="image-account" height ="375px" width ="1120px">--%>
	<div class="container-lg pt-5">
		<h1 style="text-align: center;">Administrator</h1>
		<h5 style="text-align: center; color: red;">${errorMessage}</h5>
		<div class="form-group mt-3">
			<form action="adminLog" method="post">

				User Name : <br> 
				<input type="text" class="form-control"	name="uid" placeholder="user name" required> <br>
				
				<br> Password :<br> 
				<input type="password"	class="form-control" name="pass" placeholder="password" required>
				
				<br>
				<br> <input type="checkbox" id="check"> Remember me<br>
				<br> <input type="submit" class="btn btn-primary" value="Login"
					width="500px"><br>

			</form>
		</div>
	</div>

</body>
</html>