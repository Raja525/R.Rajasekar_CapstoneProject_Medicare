<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%
    	String name=request.getParameter("msg");		//--------Username(ses1)-------//
    	HttpSession ses1=request.getSession();
    	ses1.setAttribute("username", name);
    	String pass=(String)ses1.getAttribute("password");
    	//System.out.println(name+" "+pass);
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
    	Statement st=con.createStatement();
    	ResultSet rs=st.executeQuery("select MailId from userdata_table where UserName='"+name+"' and Password='"+pass+"'");
    	while(rs.next())
    	{
    		String Mail=rs.getString("MailId");
    		HttpSession ses2=request.getSession();
    		ses2.setAttribute("Mail", Mail);
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<link href="/Medicare/resources/CSS/style.css" rel="stylesheet" type="text/css">
<title><%=name%> Home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet"> 
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
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
	#homename
	{
		position:absolute;
		top:1rem;
		right:5rem;
	}
}
</style>
</head>
<body>
	<div>
	<div id="section1" class="sec">
		<div id="display">
			<div id="navbar" class="row">
				<a href="userhome.jsp?msg=<%=name %>"  class="col-2" style="text-decoration:none;color:black;"><div id="logo">Medicare</div></a>
				<div class="col-8" id="searchcontainer">
					<form action="page2" method="post" class="form-inline">
					<input placeholder="search" type="search" name="search" id="searchbar" class="form-control"  style="display:inline-block; ">
					<button type="submit" class="btn btn-danger" style="display:inline-block; "><i class="fa fa-search"></i></button>
					</form>
				</div>
				<div class="col-1" style="padding-top:0px;">
					<a href="kart.jsp?msg=<%=name %>"><button class="btn" id="kart"><i class="fa fa-cart-plus"></i></button></a>
				</div>
				<div class="col-1" style="padding-top:0px;">
					<a href="home.jsp" id="homename" style="margin-right:10px;"><button class="btn" ><i class="fa fa-user"></i> <%=name %></button></a>
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
		Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
		Statement st2=con2.createStatement();
		ResultSet rs2=st2.executeQuery("select * from product_table where Status='enable' and ProductType='Beautycare' limit 4");
		while(rs2.next())
		{
		%>
			<div class="col-lg-3 col-sm-6 col-md-6">
				<a id="n1" href="page3.jsp?msg=<%=rs2.getString("ProductName")%>"><div class="box">
					<div class="card" style="width: 14rem;">
  					<img class="card-img-top" src="/Medicare/resources/IMG/<%=rs2.getString("ImgName") %>" alt="Card image cap">
  					<div class="card-body">
  						<h5 class="card-title"><%=rs2.getString("ProductName") %></h5>
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
		Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
		Statement st1=con1.createStatement();
		ResultSet rs1=st1.executeQuery("select * from product_table where Status='enable' and ProductType='Bodycare' limit 4");
		while(rs1.next())
		{
		%>
			<div class="col-lg-3 col-sm-6 col-md-6">
				<a id="n5" href="page3.jsp?msg=<%=rs1.getString("ProductName")%>"><div class="box">
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
			<a class="a" href="page2.jsp?msg=Healthcare"><div class="container" id="health">healthcare</div></a>
			<a class="a" href="page2.jsp?msg=Fitness"><div class="container" id="fitness">fitness</div></a>
			<a class="a" href="page2.jsp?msg=Beautycare"><div class="container" id="beauty">beautycare</div></a>
			<a class="a" href="page2.jsp?msg=Medicines"><div class="container" id="medicine">medicines</div></a>
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