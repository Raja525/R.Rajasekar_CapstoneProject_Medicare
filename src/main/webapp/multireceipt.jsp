<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
    <%
    HttpSession delivery=request.getSession();
    String id=(String)delivery.getAttribute("itemid");
    HttpSession ses1=request.getSession();
	String name=(String)ses1.getAttribute("username");
   	String password=(String)ses1.getAttribute("password");
   	String deltouser=request.getParameter("msg");
    HttpSession ses2=request.getSession();
   	String mail=(String)ses2.getAttribute("Mail");
    Class.forName("com.mysql.jdbc.Driver");
 	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
 	PreparedStatement ps=con.prepareStatement("delete from kart_table where UserName='"+deltouser+"' and MailId='"+mail+"'");
 	ps.executeUpdate();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Receipt Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet"> 
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"> 
<link href="https://fonts.googleapis.com/css2?family=Squada+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=MonteCarlo&family=Squada+One&family=Titillium+Web:wght@200&display=swap" rel="stylesheet">
<style type="text/css">
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
</style>
</head>
<body>
<div id="container">
	<div id="title">Medicare</div>
	<div id="wish">Thank you for purchase</div>
	<div>
		<%
		Class.forName("com.mysql.jdbc.Driver");
    	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
    	Statement st1=con1.createStatement();
    	ResultSet rs1=st1.executeQuery("select * from product_table where Id='"+id+"'");
    	while(rs1.next())
    	{
		%>
		<div class="row" style="height:440px;padding:40px 50px;margin:0px;">
			<div class="col-4" style="height:100%;background-image:url('/Medicare/resources/IMG/<%=rs1.getString("ImgName") %>');background-size:cover;background-repeat:no-repeat;background-position:center;"></div>
			<div class="col-8" style="padding:0px 5%">
				<div class="" style="font-family:'Montserrat',sans-serif;"><%=rs1.getString("ProductName") %></div>
				<span><%=rs1.getString("Brand") %>(<%=rs1.getString("ProductType") %>)</span>
				<div>Category: <%=rs1.getString("Category") %></div>
				<p>Description:<br><%=rs1.getString("Description") %>
				<div id="order" style="padding:10px; font-family:'Montserrat',sans-serif; border-radius:5px; width:100px;">Price: <%=rs1.getString("Price") %></div>
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
    	Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
    	Statement st2=con2.createStatement();
    	ResultSet rs2=st2.executeQuery("select * from userdata_table where UserName='"+name+"' and Password='"+password+"'");
    	while(rs2.next())
    	{
		%>
			<div class="col-6">
				<h5>Customer Details</h5>
				<div>
					<div style="font-family:'Montserrat',sans-serif;"><%=rs2.getString("UserName")%></div>
					<div>Mail: <%=rs2.getString("MailId") %></div>
					<div>Mobile: <%=rs2.getString("MobileNo") %></div>
				</div>	
			</div>
			<div class="col-6">
				<h5>Shipping Address</h5>
				<div>
					<div><span style="font-family:'Montserrat',sans-serif;">Address:</span> <%=rs2.getString("Address") %></div>
					<div style="margin:20px 0px;"><button class="btn btn-warning" onclick="window.print()">Print</button></div>
				</div>
			</div>
			<% 
    		}
			%>
		</div>
	</div>
		<a href="userhome.jsp?msg=<%=name%>"><button class="btn btn-primary" style="width:100%;">Return to Purchase</button></a>
	</div>
</body>
</html>