<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="/Medicare/resources/CSS/style.css" rel="stylesheet" type="text/css">
<title>Admin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet"> 
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"> 
</head>
<body>
	<div class="row" id="set">
		<div class="col-6 inner" style="box-shadow:6px 0px 12px -4px black;height:620px;padding:50px;background-image:url('/Medicare/resources/IMG/admin.jpg');background-size:cover;background-position:bottom;background-repeat:no-repeat;">	
				<div style="text-align:center;padding:20px;height:320px;font-family:'Montserrat',sans-serif;">Admin RJ</div>
		</div>
		<div class="col-6">
			<div style="text-align:center;font-family:'Montserrat',sans-serif;padding:20px;">Admin Login</div>
			<div  id="div2">
			<form action="admin" method="post">
				<input type="text" id="in1" name="username" class="form-control" placeholder="Admin Name">
				<input type="password" id="in2" name="password" class="form-control" placeholder="Password">
				<input type="submit" id="in3" value="SignIn" class="btn btn-primary">
			</form>
			</div>
		</div>
	</div>
</body>
</html>