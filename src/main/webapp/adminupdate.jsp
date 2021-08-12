<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>adminedit</title>
<link href="/Medicare/resources/CSS/style.css" rel="stylesheet" type="text/css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet"> 
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"> 

</head>
<body>
	<div style="padding:100px;">
	 <%
    	String id=request.getParameter("msg");
    	HttpSession update=request.getSession();
    	update.setAttribute("Id", id);
    Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from product_table where Id='"+id+"'");
	while(rs.next())
	{	
    %>
	<div class="row" style="padding:20px;margin-bottom:50px;border-radius:10px;box-shadow:0px 2px 12px -2px black;">
				<div class="title">Add Products</div>
				<div style="padding:50px 20%;">
					<form action="adminupdate" method="post">
						<input type="text" class="form-control" name="productname" value="<%=rs.getString("ProductName") %>" placeholder="ProductName">
						<input type="text" class="form-control" name="price"  value="<%=rs.getString("Price") %>" placeholder="Price">
						<input type="text" class="form-control" name="description" placeholder="Description"  value="<%=rs.getString("Description") %>">
						<input type="text" class="form-control" name="category" placeholder="Category"  value="<%=rs.getString("Category") %>">
						<input type="text" class="form-control" name="imgname" placeholder="ImgName"  value="<%=rs.getString("ImgName") %>">
						<input type="text" class="form-control" name="producttype" placeholder="ProductType"  value="<%=rs.getString("ProductType") %>">
						<input type="text" class="form-control" name="brand" placeholder="Brand"  value="<%=rs.getString("Brand") %>">
						<input type="submit" class="btn btn-primary" value="Update">
					</form>
				</div>
			</div>
			  <%} %>
	</div>		
</body>
</html>