<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=1.0">
<!--  <link href="/Medicare/resources/CSS/style.css" rel="stylesheet" type="text/css"> -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet"> 
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"> 
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
/*--------------------------------------------------------------*/
	
	
	#sec1
	{
		box-shadow:0 2px 10px -4px black;
		margin-bottom:50px;
		height:auto;
	}
	.title
	{
	text-align:center;
	padding:10px;
	font-family:'Montserrat',sans-serif
	}
	#sec2
	{
		padding:20px 60px;
		margin-bottom:50px;
	}
	
</style>
</head>
<body>
		<div id="sec1" class="sec">
		<div>
			<div id="navbar" class="row" style="margin:0px;">
				<div id="logo" class="col-2">Medicare</div>
				<div class="col-8"></div>
				<div class="col-2"><a href="home.jsp" style="font-family:'Montserrat',sansserif;color:black;text-decoration:none;float:right;">Logout</a></div>
			</div>
		</div>
		</div>
		
	<div id="container" style="padding:50px;">
	
		<div class="row"  style="padding:20px;margin-bottom:50px;border-radius:10px;box-shadow:0px 2px 12px -2px black;">
				<div class="title">Product List</div>
					<table style="padding:10px;" class="table table-striped">
						<thead>
							<tr>
								<th>Id</th>
								<th>Product Name</th>
								<th>Price</th>
								<th>Description</th>
								<th>Category</th>
								<th>Product Type</th>
								<th>Brand</th>
								<th>Update</th>
								<th>Delete</th>
							</tr>
						</thead>
						<tbody>
				<%
					Class.forName("com.mysql.jdbc.Driver");
				//	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
					Connection con=DriverManager.getConnection("jdbc:mysql://awsdb.cg2a3l4mwr3i.ap-south-1.rds.amazonaws.com:3306/medicare","root","rootraja");
					Statement st=con.createStatement();
					ResultSet rs=st.executeQuery("select * from product_table");
					while(rs.next())
					{	
				%>
					<tr>
						<td><%=rs.getString("Id") %></td>
						<td><%=rs.getString("ProductName") %></td>
						<td><%=rs.getString("Price") %></td>
						<td><%=rs.getString("Description") %></td>
						<td><%=rs.getString("Category") %></td>
						<td><%=rs.getString("ProductType") %></td>
						<td><%=rs.getString("Brand") %></td>
						<td><a href="adminupdate.jsp?msg=<%=rs.getString("Id")%>"><button class="btn btn-warning">Update</button></a></td>
						<td><form action="admindelete" method="post"><button type="submit" name="id" class="btn btn-danger" value="<%=rs.getString("Id") %>">Delete</button></form></td>
					</tr>
				<%}
				%>
				</tbody>
			</table>
		</div>	
		
		<div class="row" style="padding:20px;margin-bottom:50px;border-radius:10px;box-shadow:0px 2px 12px -2px black;">
			<div class="title">Enable/Disable Products</div>
			<table style="padding:10px;" class="table table-striped">
						<thead>
							<tr>
								<th>Id</th>
								<th>Product Name</th>
								<th>Price</th>
								<th>Status</th>
								<th>Change Status</th>
							</tr>
						</thead>
						<tbody>
							<% 
							Class.forName("com.mysql.jdbc.Driver");
						//	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
							Connection con1=DriverManager.getConnection("jdbc:mysql://awsdb.cg2a3l4mwr3i.ap-south-1.rds.amazonaws.com:3306/medicare","root","rootraja");
							Statement st1=con1.createStatement();
							ResultSet rs1=st1.executeQuery("select * from product_table");
							while(rs1.next())
							{	
							%>
							<tr>
						<td><%=rs1.getString("Id") %></td>
						<td><%=rs1.getString("ProductName") %></td>
						<td><%=rs1.getString("Price") %></td>
						<td><%=rs1.getString("Status") %></td>
						<td>
							<form action="adminstatus" method="post">  
								<button id="btn<%=rs1.getString("Id")%>" name="status" value="<%=rs1.getString("Id")%> <%=rs1.getString("Status")%>" class="btn btn-danger" onclick="change(this.id)">Change Status</button>
							</form> 
						</td> 
							</tr>
							<%}%>
						</tbody>
				</table>
			</div>
	
			<div class="row" style="padding:20px;margin-bottom:50px;border-radius:10px;box-shadow:0px 2px 12px -2px black;">
				<div class="title">Add Products</div>
				<div style="padding:50px 20%;">
					<form action="addproduct" method="post">
						<input type="text" class="form-control" name="productname" placeholder="ProductName">
						<input type="text" class="form-control" name="price" placeholder="Price">
						<input type="text" class="form-control" name="description" placeholder="Description">
						<input type="text" class="form-control" name="category" placeholder="Category">
						<input type="text" class="form-control" name="imgname" placeholder="ImgName">
						<input type="text" class="form-control" name="producttype" placeholder="ProductType">
						<input type="text" class="form-control" name="brand" placeholder="Brand">
						<select name="status" class="form-control">
							<option value="Enable" selected>Enable</option>
							<option value="Disable">Disable</option>
						</select>
						<input type="submit" class="btn btn-primary" value="Add Product">
					</form>
				</div>
			</div>
	</div>
	<script>
		
		function change(id)
		{
			alert("Status Changed Successfully!")
			var val=document.getElementById(id).innerHTML;
			var id=document.getElementById(id);
			
			if (val === "Disable") {
				 
				  id.style.backgroundColor="blue";
					id.style.border="none";
					id.textContent="Enable";

				}
				else {
					id.style.backgroundColor="#DF5E5E";
					id.style.border="none";
					id.textContent="Disable";

				}
		
			
		}
	</script>
	</body>
</html>