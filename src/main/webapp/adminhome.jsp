<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="/Medicare/resources/CSS/style.css" rel="stylesheet" type="text/css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet"> 
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"> 
<style>
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
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
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
							Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
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