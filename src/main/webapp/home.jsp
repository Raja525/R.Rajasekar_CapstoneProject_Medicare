<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--  <link href="/Medicare/resources/CSS/style.css" rel="stylesheet" type="text/css"> -->  
<title>Home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet"> 
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
@charset "ISO-8859-1";

/*---------------section1--------------*/
#searchbar
{
	width:300px;
}
.form-inline
{
	padding:0px 0px 0px 50px;
	float:right;	
}
#navbar
{
	padding:10px;
	margin:0px;
}
#display
{
	background-image:url('/Medicare/resources/IMG/medihome4.jpg');
	background-size:cover;
		background-position:center;
		background-repeat:no-repeat;
		font-family:'Montserrat',Sans-serif;
		padding:10vm;
}
#searchcontainer
{
	padding:0px;
}

#signin,#kart
{
	border:none;
	background-color:#F8485E;
}
/*---------------section2--------------*/
#section2
{
	padding:50px;
	background-color:#F8485E;
}
.title
{
	font-family:'Montserrat',sans-serif;
	font-size:32px;
	font-weight:600px;
	text-align:center;
}
.row
{
	padding:20px 0px;
}
.col-3
{
	padding:20px;
}
.box
{
	padding:0px;
	
}
.card{
	margin:auto;
	box-shadow:0 8px 16px -4px;
}
h5
{
	text-align:center;
}
/*--------------------section3----------------------*/
#section3
{
	background-color:#FDEFEF;
	padding:50px;
}
#health
{
	background-image:url('/Medicare/resources/IMG/healthcarehome.jpg');
}
#fitness
{
	background-image:url('/Medicare/resources/IMG/fitnesshome2.jpg');
	color:#0CECDD;
}
#beauty
{
	background-image:url('/Medicare/resources/IMG/beautyhome.jpg');
	color:#FF4C29;
}
#medicine
{
	background-image:url('/Medicare/resources/IMG/madicineshome.jpg');
	color:black;
}
.container
{
	height:300px;
	margin:50px 0px;
	background-size:cover;
		background-position:center;
		background-repeat:no-repeat;
		font-family:'Montserrat',sans-serif;
		font-weight:600px;
		font-size:32px;
		box-shadow:0 6px 12px -4px black;
		border-radius:10px;
		text-align:center;
		padding:100px;
		color:#DF5E5E;
}
.a
{
	text-decoration:none;
}
/*--------------------section4-----------*/
#section4
{
	background-color:black;
	padding:30px;
	color:white;
}
#section4 .row
{
	margin:0px;
}
.footer
{
	padding:20px;
}
.footer #sec1,.footer #sec2
{
	border-right:solid 1px white;
}
#sec1,#sec2,#sec3
{
	height:200px;
}
/*-----------------------page2.jsp---------------------------*/
#logo{
	font-family:'Montserrat',sans-serif;
}
.row{
	margin:0px;
}
#itemlist
{
	padding:10px 20px;
}

#content
{
	padding-left:20px;
}
/*------------------------page3------------*/

#carosalbtnlft,#carosalbtnrgt
{
	width:50px;
	background-color:transparent;
	border:none;
}
#form1,#form2,#form3,#form4,#form5{
	margin-bottom:10px;
}
/*-------------signin----------------------*/
#div1
{
	height:625px;
	background-image:url('/Medicare/resources/IMG/beautyhome.jpg');
	background-size:cover;
	background-repeat:no-repeat;
	background-position:center;
}
#div2
{
	height:auto;
	padding:20% 10% 10% 10%;
}
#set
{
	margin:0px;
	padding:0px;
}
#in1,#in2,#in3
{
	margin-bottom:10px;
}
.form-control{
	margin-bottom:10px;
}
#n1,#n2,#n3,#n4,#n5,#n6,#n7,#n8{
	text-decoration:none;
	color:black;
}
#n1,#n2,#n3,#n4,#n5,#n6,#n7,#n8:hover
{
	text-decoration:none;
	color:black;
}
span
{
font-family:'Montserrat',sans-serif;	
}
/*---------------------------------------------------------------------*/
	
	
#display
	{
		padding:1rem;
	}
	#navbar
{
	padding:1rem;
	margin:0px;
}
#quote
{
	color:gray;
	font-size:9vw;
	font-weight:800px;
	width:50%;
	border:solid 1px black;
	padding:20px;
	margin:0px 0px 10px 10px;
}
#searchbar
{
	width:300px;
}
.form-inline
{
	padding:0px 0px 0px 50px;
	float:right;	
}
#navbar
{
	padding:10px;
	margin:0px;
}
#display
{
	background-image:url('/Medicare/resources/IMG/medihome4.jpg');
	background-size:cover;
		background-position:center;
		background-repeat:no-repeat;
		font-family:'Montserrat',Sans-serif;
		padding:10vm;
}
#searchcontainer
{
	padding:0px;
}

#signin,#kart
{
	border:none;
	background-color:#F8485E;
}
/*---------------section2--------------*/
#section2
{
	padding:50px;
	background-color:#F8485E;
}
.title
{
	font-family:'Montserrat',sans-serif;
	font-size:32px;
	font-weight:600px;
	text-align:center;
}
.row
{
	padding:20px 0px;
}
.col-3
{
	padding:20px;
}
.box
{
	padding:0px;
	
}
.card{
	margin:auto;
	box-shadow:0 8px 16px -4px;
}
h5
{
	text-align:center;
}
/*--------------------section3----------------------*/
#section3
{
	background-color:#FDEFEF;
	padding:50px;
}
#health
{
	background-image:url('/Medicare/resources/IMG/healthcarehome.jpg');
}
#fitness
{
	background-image:url('/Medicare/resources/IMG/fitnesshome2.jpg');
	color:#0CECDD;
}
#beauty
{
	background-image:url('/Medicare/resources/IMG/beautyhome.jpg');
	color:#FF4C29;
}
#medicine
{
	background-image:url('/Medicare/resources/IMG/madicineshome.jpg');
	color:black;
}
.container
{
	height:300px;
	margin:50px 0px;
	background-size:cover;
		background-position:center;
		background-repeat:no-repeat;
		font-family:'Montserrat',sans-serif;
		font-weight:600px;
		font-size:32px;
		box-shadow:0 6px 12px -4px black;
		border-radius:10px;
		text-align:center;
		padding:100px;
		color:#DF5E5E;
}
.a
{
	text-decoration:none;
}
/*--------------------section4-----------*/
#section4
{
	background-color:black;
	padding:30px;
	color:white;
}
#section4 .row
{
	margin:0px;
}
.footer
{
	padding:20px;
}
.footer #sec1,.footer #sec2
{
	border-right:solid 1px white;
}
#sec1,#sec2,#sec3
{
	height:200px;
}

/*---------------------------------------------------*/
	@media only screen and (max-width:700px)
{
	#navbar
	{
		padding:1%;
		width:100%;
		height:10rem;
		margin-bottom:5%;
	}
	#searchbar
	{
		width:100%;
	}
	#searchcontainer
	{
		padding:15% 5% 10% 5%;
	}
	.form-inline
	{
	width:100%;
	padding:0px;
	}
	#signin
	{
		position:absolute;
		right:1rem;
		top:1rem;
	}
	html,body
	{
	margin:0px;
	padding:0px;
	}
	.box{
	padding:20px 0px;
	}
	p{
	font-size:2vw;
	}
	#section4 .row
	{
	padding:20px;
	}
}
</style>
</head>
<body>
	<div>
	<div id="section1" class="sec">
		<div id="display">
			<div id="navbar" class="row">
				<a href="home.jsp"  class="col-1" style="text-decoration:none;color:black;"><div id="logo">Medicare</div></a>
				<div class="col-10" id="searchcontainer">
					<form action="notuser2" method="post" class="form-inline">
					<input placeholder="search" type="search" name="search" id="searchbar" class="form-control"  style="display:inline-block; ">
					<button type="submit" class="btn btn-danger" style="display:inline-block;"><i class="fa fa-search"></i></button>
					</form>
				</div>
				<div class="col-1">
				<a href="signin.jsp" style="margin-right:10px;"><button class="btn" id="signin">Signin</button></a>
				</div>
			</div>
			<div id="quote">The greatest wealth is <span style="color:#F8485E;">health</span></div>
		</div>
	</div>
	<div id="section2" class="sec">
	<div class="title">Top selling Products</div>
		<div class="row">
		<%
		Class.forName("com.mysql.jdbc.Driver");
	//	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
		Connection con=DriverManager.getConnection("jdbc:mysql://awsdb.cg2a3l4mwr3i.ap-south-1.rds.amazonaws.com:3306/medicare","root","rootraja");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from product_table where Status='enable' and ProductType='Beautycare' limit 4");
		while(rs.next())
		{
		%>
			<div class="col-lg-3 col-sm-6 col-md-6">
				<a id="n1" href="notuser3.jsp?msg=<%=rs.getString("ProductName")%>"><div class="box" style="padding:20px 0px;">
					<div class="card" style="width: 14rem;">
  					<img class="card-img-top" src="/Medicare/resources/IMG/<%=rs.getString("ImgName") %>" alt="Card image cap">
  					<div class="card-body">
  						<h5 class="card-title"><%=rs.getString("ProductName") %></h5>
    				</div>
					</div>
				</div></a>
			</div>
			<%
		}
			%>
		</div>
		<div class="row">
		<%
		Class.forName("com.mysql.jdbc.Driver");
	//	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
		Connection con1=DriverManager.getConnection("jdbc:mysql://awsdb.cg2a3l4mwr3i.ap-south-1.rds.amazonaws.com:3306/medicare","root","rootraja");
		Statement st1=con1.createStatement();
		ResultSet rs1=st1.executeQuery("select * from product_table where Status='enable' and ProductType='Bodycare' limit 4");
		while(rs1.next())
		{
		%>
			<div class="col-lg-3 col-sm-6 col-md-6">
				<a id="n5" href="notuser3.jsp?msg=<%=rs1.getString("ProductName")%>"><div class="box">
					<div class="card" style="width: 14rem;">
  					<img class="card-img-top" src="/Medicare/resources/IMG/<%=rs1.getString("ImgName") %>" alt="Card image cap">
  					<div class="card-body">
  						<h5 class="card-title"><%=rs1.getString("ProductName") %></h5>
    				</div>
				</div>
				</div></a>
			</div>
			<%
			}%>
		
		</div>
	</div>
	<div id="section3" class="sec">
	<div class="title">Categories</div>
		<div>
			<a class="a" href="notuser2.jsp?msg=Healthcare"><div class="container" id="health">healthcare</div></a>
			<a class="a" href="notuser2.jsp?msg=Fitness"><div class="container" id="fitness">fitness</div></a>
			<a class="a" href="notuser2.jsp?msg=Beautycare"><div class="container" id="beauty">beautycare</div></a>
			<a class="a" href="notuser2.jsp?msg=Medicines"><div class="container" id="medicine">medicines</div></a>
		</div>
	</div>
	<div id="section4" class="sec">
		<div class="row">
			<div class="col-4 footer"><div id="sec1"> &copy Medicare 2021,pvt.</div></div>
			<div class="col-4 footer"><div id="sec2">
			<div style="font-family:'Montserrat',sans-serif;">Follow us</div>
				<p>Insta: rajasekar6667</p>
				<p>Facebook: rajasekar</p>
				<p>What's app: 8220743247</p>
			</div>
			</div>
			<div class="col-4 footer"><div id="sec3">
				<div style="font-family:'Montserrat',sans-serif;">Contact Us</div>
					<p>Mail id: rajasekar.rs525@gmail.com</p>
					<p>Phone no: 8220743247</p>
					<p>Address: Mediacare pvt,rajapalayum road,<br>Adaiyar,<br>chennai-600028</p>
			</div></div>
		</div>
	</div>
	</div>
</body>
</html>