<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" import="java.util.ArrayList" %>
    <%
    HttpSession ses2=request.getSession();
	String mail=(String)ses2.getAttribute("Mail");
	HttpSession ses1=request.getSession();
	String name=(String)ses1.getAttribute("username");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!--  <link href="/Medicare/resources/CSS/style.css" rel="stylesheet" type="text/css"> -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet"> 
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"> 
<title>My Kart</title>
<style type="text/css">
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
/*---------------------------------------------------------------------*/
	
	
#displaynone
{
	border-right:1px solid black;
}
#itemcontent
{
	padding:20px 40px;
}
#item
{
	margin:0px;padding:20px 20px;
}
.row
{
	margin:0px;padding:0px;
}
#order
{
	padding:10px; font-family:'Montserrat',sans-serif; border-radius:5px; width:100px;
}
#calculation
{
	position:fixed;right:1px;
}
@media only screen and (max-width:700px)
{
	#displaynone
	{
		border-right:none;
	}
	#calculation
	{
		position:relative;
		bottom:0;
	}
}
</style>
</head>
<body>
		<div id="navbar" class="row">
				<a href="userhome.jsp?msg=<%=name %>"  class="col-2" style="text-decoration:none;color:black;"><div id="logo">Medicare</div></a>
		</div>
	
	<div class="row">
		<div class="col-lg-8 col-md-8 col-sm-12" style="padding:40px">
			<div id="displaynone">
		<% 
		int total=0;
		ArrayList<String> list=new ArrayList<String>();
		Class.forName("com.mysql.jdbc.Driver");
	//	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
		Connection con=DriverManager.getConnection("jdbc:mysql://awsdb.cg2a3l4mwr3i.ap-south-1.rds.amazonaws.com:3306/medicare","root","rootraja");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select ProductId from kart_table where UserName='"+name+"' and MailId='"+mail+"'");
		while(rs.next())
		{
			list.add(rs.getString("ProductId"));
		}
		
		Class.forName("com.mysql.jdbc.Driver");
	//	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
			Connection con1=DriverManager.getConnection("jdbc:mysql://awsdb.cg2a3l4mwr3i.ap-south-1.rds.amazonaws.com:3306/medicare","root","rootraja");
		Statement st1=con1.createStatement();
		for(int i=0;i<list.size();i++)
		{
		ResultSet rs1=st1.executeQuery("select * from product_table where Id='"+list.get(i)+"'");
		while(rs1.next())
			{
				total=total+Integer.parseInt(rs1.getString("Price"));
			%>
					 <a href="page3.jsp?msg=<%=rs1.getString("ProductName") %>" style="text-decoration:none;color:black;">
				  <div id="item" class="row">
						<div class="col-md-4 col-sm-12 imgcontainer" style="background-image:url('https://medicareimage.s3.ap-south-1.amazonaws.com/IMG/<%=rs1.getString("ImgName") %>');background-size:cover;background-repeat:no-repeat;background-position:center;">
						</div>
						<div class="col-md-8 col-sm-12" id="itemcontent">
							<div style="font-family:'Montserrat',sans-serif;"><%=rs1.getString("ProductName") %></div>
							<span><%=rs1.getString("Brand") %>(<%=rs1.getString("ProductType") %>)</span>
							<div>Category: <%=rs1.getString("Category") %></div>
							<p>Description:<br><%=rs1.getString("Description") %>
							
							<div id="order">Price: <%=rs1.getString("Price") %></div>
						</div>			
						
					</div>
				</a>
			    <%
			
			}
		}
		%>
		</div>
		</div>
			
		<div class="col-lg-4 col-md-4 col-sm-6" id="calculation">
			<div style="padding:50px;">
				<div style="font-family:'Montserrat',sans-serif;text-align:center;padding:20px;">Bill Amount</div>
				<div style="padding:10px;border:solid 1px;border-radius:5px;margin-bottom:10px;">
					<h5>Subtotal = Rs.<%=total %></h5>
				</div>
				
			<span>	<a href="paymentkart.jsp"  style="display:inline-block;margin-right:20px;"><button onclick="proceed()" class="btn btn-primary">Proceed</button></a>
					<a href="page2.jsp"  style="display:inline-block;"><button class="btn btn-primary">Back</button></a> </span>	
			</div>
		</div>
		
	</div>
	<script>
	count();
	function count(){
		var count=<%=total%>
		if(count==0){
			alert("No Item Added")
			var list=document.getElementById('displaynone');
			list.innerHTML='Item Not Added!';
			list.style.textAlign='center';
			list.style.fontFamily='Montserrat',sans-serif;
		}
	}
	
	function proceed()
	{
		confirm("Can we Proceed with this Items!");
	}
	</script>
</body>
</html>
