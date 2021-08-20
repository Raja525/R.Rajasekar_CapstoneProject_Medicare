<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
    <%
    HttpSession delivery=request.getSession();
    String id=(String)delivery.getAttribute("itemid");
    HttpSession ses1=request.getSession();
	String name=(String)ses1.getAttribute("username");
   	String password=(String)ses1.getAttribute("password");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Receipt Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet"> 
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"> 
<link href="https://fonts.googleapis.com/css2?family=Squada+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=MonteCarlo&family=Squada+One&family=Titillium+Web:wght@200&display=swap" rel="stylesheet">
<style type="text/css">
@charset "ISO-8859-1";	
	#title
	{
		font-family: 'Squada One', cursive;
		font-size:32px;
		border-bottom:solid 1px gray;
		text-align:center;
	}
	#container
	{
		padding:2% 5%;
	}
	#wish
	{
		font-family: 'Titillium Web', sans-serif;
		font-size:40px;
		text-align:center;
		padding:20px;
	}
	.row{
	margin:0px;
	padding:2% 5% 6% 5%;
	}
	h5{
	text-align:center;
	}
	#itembox
	{
	height:540px;padding:40px 50px;margin:0px;
	}
	#itemboximg
	{
		height:100%;
		background-size:cover;background-repeat:no-repeat;background-position:center;
	}
	#itembixmsg
	{
		padding:5%;
	}
	
@media only screen and (max-width:700px)
{
	#itembox
	{
	 padding:5%;
	}
	#itemboximg
	{
		height:300px;	
	}
	#itembixmsg
	{
		padding:8% 5%;
	}
	.data
	{
		padding:5%;
	}
}
</style>
</head>
<body>
<div id="container">
	<div id="title">Medicare</div>
	<div id="wish">Thank you for purchase</div>
	<div>
		<%
		Class.forName("com.mysql.jdbc.Driver");
    //	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
		Connection con=DriverManager.getConnection("jdbc:mysql://awsdb.cg2a3l4mwr3i.ap-south-1.rds.amazonaws.com:3306/medicare","root","rootraja");
    	Statement st=con.createStatement();
    	ResultSet rs=st.executeQuery("select * from product_table where Id='"+id+"'");
    	while(rs.next())
    	{
		%>
		<div class="row">
			<div class="col-md-4 col-sm-12" id="itemboximg" style="background-image:url('https://medicareimage.s3.ap-south-1.amazonaws.com/IMG/<%=rs.getString("ImgName") %>');"></div>
			<div class="col-md-8 col-sm-12" id="itemboximg" >
				<div class="" style="font-family:'Montserrat',sans-serif;"><%=rs.getString("ProductName") %></div>
				<span><%=rs.getString("Brand") %>(<%=rs.getString("ProductType") %>)</span>
				<div>Category: <%=rs.getString("Category") %></div>
				<p>Description:<br><%=rs.getString("Description") %>
				<div id="order" style="padding:10px; font-family:'Montserrat',sans-serif; border-radius:5px; width:100px;">Price: <%=rs.getString("Price") %></div>
			</div>
		</div>
		<%
    	}
		%>
	</div>
	<div id="sec2">
		<div class="row">
		<%
		Class.forName("com.mysql.jdbc.Driver");
 //   	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
		Connection con1=DriverManager.getConnection("jdbc:mysql://awsdb.cg2a3l4mwr3i.ap-south-1.rds.amazonaws.com:3306/medicare","root","rootraja");
    	Statement st1=con1.createStatement();
    	ResultSet rs1=st1.executeQuery("select * from userdata_table where UserName='"+name+"' and Password='"+password+"'");
    	while(rs1.next())
    	{
		%>
			<div class="col-md-6 col-sm-12 data">
				<h5>Customer Details</h5>
				<div>
					<div style="font-family:'Montserrat',sans-serif;"><%=rs1.getString("UserName")%></div>
					<div>Mail: <%=rs1.getString("MailId") %></div>
					<div>Mobile: <%=rs1.getString("MobileNo") %></div>
				</div>	
			</div>
			<div class="col-md-6 col-sm-12 data">
				<h5>Shipping Address</h5>
				<div>
					<div><span style="font-family:'Montserrat',sans-serif;">Address:</span> <%=rs1.getString("Address") %></div>
					<div style="margin:20px 0px;"><button class="btn btn-warning" onclick="window.print()">Print</button></div>
				</div>
			</div>
			<% 
    		}
			%>
		</div>
		<a href="userhome.jsp?msg=<%=name%>"><button class="btn btn-primary" style="width:100%;">Return to Purchase</button></a>
		
	</div>
	</div>
</body>
</html>