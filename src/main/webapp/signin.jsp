<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="/Medicare/resources/CSS/style.css" rel="stylesheet" type="text/css">
<title>Sign In</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet"> 
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"> 
<style>
@media (max-width:700px)
{
	#form
	{
		position:absolute;
		top:0;
		background-color:transparent;
	}
	#div1
{
	height:100%;
	width:100%;
	background-image:url('/Medicare/resources/IMG/beautyhome.jpg');
	background-size:cover;
	background-repeat:no-repeat;
	background-position:center;
}
}
</style>
</head>
<body>
	<div class="row" id="set">
		<div class="col-lg-6 col-md-12 col-sm-12" id="div1"></div>
		<div class="col-lg-6 col-md-12 col-sm-12" id="form">
			<div style="text-align:center;font-family:'Montserrat',sans-serif;padding:20px;">SignIn</div>
			<div  id="div2">
			<form action="signin" method="post">
				<input type="text" id="in1" name="username" class="form-control" placeholder="Username">
				<input type="password" id="in2" name="password" class="form-control" placeholder="Password">
				<input type="submit" id="in3" value="SignIn" class="btn btn-primary">
				<a href="signup.jsp" style="padding:0px 10px">SignUp?</a>
			</form>
			</div>
		</div>
	</div>
</body>
</html>