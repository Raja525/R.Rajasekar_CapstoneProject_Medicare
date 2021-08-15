<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%
    	String msg=request.getParameter("msg");
    HttpSession ses2=request.getSession();
	ses2.setAttribute("ProductName", msg);
	
	HttpSession ses1=request.getSession();
	String name=(String)ses1.getAttribute("username");
	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=1.0">
<!--  <link href="/Medicare/resources/CSS/style.css" rel="stylesheet" type="text/css"> -->
<title>page3</title>
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
	background-image:url('https://medicareimage.s3.ap-south-1.amazonaws.com/IMG/medihome4.jpg');
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
	background-image:url('https://medicareimage.s3.ap-south-1.amazonaws.com/IMG/healthcarehome.jpg');
}
#fitness
{
	background-image:url('https://medicareimage.s3.ap-south-1.amazonaws.com/IMG/fitnesshome2.jpg');
	color:#0CECDD;
}
#beauty
{
	background-image:url('https://medicareimage.s3.ap-south-1.amazonaws.com/IMG/beautyhome.jpg');
	color:#FF4C29;
}
#medicine
{
	background-image:url('https://medicareimage.s3.ap-south-1.amazonaws.com/IMG/madicineshome.jpg');
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
	background-image:url('https://medicareimage.s3.ap-south-1.amazonaws.com/IMG/beautyhome.jpg');
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
#itembox
{
	height:540px;padding:40px 50px;margin:0px;
}
#itemboximg
{
	heigth:100%;
	background-size:cover;
	background-repeat:no-repeat;
	background-position:center;
}
#itemboxmsg
{
	padding:50px 40px;
}
/*-------------------------------------------------------------------*/
	@media only screen and (max-width:700px)
	{
		#searchbar
		{
			width:60%;
		}
		.form-inline
		{
			padding:0px;
		}
		#searchcontainer
		{
			padding:5% 1%;
		}
		#itembox
		{
			padding:5%;
		}
		#itemboxmsg
		{
			padding:8% 5%;
		}
		#itemboximg
		{
			height:300px;
		}
		#kart
		{
			position:absolute;
			top:1%;
			right:6%;
		}
	}
	
</style>
</head>
<body>
	<div>
		<div id="navbar" class="row" style="margin:0px;">
				<a href="userhome.jsp?msg=<%=name %>"  class="col-md-2 col-sm-12" style="text-decoration:none;color:black;"><div id="logo">Medicare</div></a>
				<div class="col-md-9 col-sm-12" id="searchcontainer">
					<form action="search" method="post" class="form-inline">
					<input placeholder="search" type="search" name="search" id="searchbar" class="form-control"  style="display:inline-block; ">
					<button type="submit" class="btn" style="display:inline-block;padding-top:5px "><i class="fa fa-search"></i></button>
					</form>
				</div>
				<div class="col-md-1">
				<a href="kart.jsp" id="kart"><button class="btn" id="kart"><i class="fa fa-cart-plus"></i></button></a>
				</div>
		</div>
		<div class="row" id="itembox">
			<%
			
			Class.forName("com.mysql.jdbc.Driver");
		//	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
			Connection con=DriverManager.getConnection("jdbc:mysql://awsdb.cg2a3l4mwr3i.ap-south-1.rds.amazonaws.com:3306/medicare","root","rootraja");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from product_table where ProductName='"+msg+"'");
			while(rs.next()){
			%>
			<div class="col-md-5 col-sm-12" id="itemboximg" style="background-image:url('https://medicareimage.s3.ap-south-1.amazonaws.com/IMG/<%=rs.getString("ImgName") %>');"></div>
			<div class="col-md-7 col-sm-12" id="itemboxmsg">
						<div style="font-family:'Montserrat',sans-serif;"><%=rs.getString("ProductName") %></div>
						<h3><%=rs.getString("Brand") %> (<%=rs.getString("ProductType") %>)</h3>
						<div>Category:<%=rs.getString("Category") %></div>
						<p>Description: <%=rs.getString("Description") %><br>
						<div>Price: Rs.<%=rs.getString("Price") %></div>
					<div style="padding:20px 0px;">
					<span>
						<form action="kart" method="post" style="display:inline-block;padding:0px 10px 0px 0px;"><button onclick="clicked()" type="submit" class="btn btn-warning" style="margin-right:20px;" name="kart" value="<%=rs.getString("Id") %>">Add to Kart</button></form>
						<a href="payment.jsp?msg=<%=rs.getString("Id") %>" style="display:inline-block;padding:0px 10px 0px 0px;"><button class="btn btn-primary" style="margin-right:20px;">Buy</button></a>
					</span>
					</div>
			</div>
			<%
			}
			%>
		</div>
		
		
	</div>
	<script>
		function clicked()
		{
			 alert("Item Added to Cart");
		}
	</script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>