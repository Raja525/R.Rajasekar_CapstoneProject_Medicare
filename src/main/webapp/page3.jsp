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
<link href="/Medicare/resources/CSS/style.css" rel="stylesheet" type="text/css">
<title>page3</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet"> 
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
#searchbar
{
	width:100%;
	padding:2%;
}
#row
{
	height:540px;padding:40px 50px;margin:0px;
}
.form-inline
{
	padding:0px;
}
	@media only screen and (max-width:700px)
	{
		#row
		{
		padding:2% 4%;
		margin:0px;
		height:300px;
		}
		#content
		{
			padding:2%;
		}
		
	}
</style>
</head>
<body>
	<div>
		<div id="navbar" class="row" style="margin:0px;">
				<a href="userhome.jsp?msg=<%=name %>"  class="col-2" style="text-decoration:none;color:black;"><div id="logo">Medicare</div></a>
				<div class="col-9" id="searchcontainer">
					<form action="" method="post" class="form-inline">
					<input placeholder="search" type="search" name="search" id="searchbar" class="form-control"  style="display:inline-block; ">
					<input type="submit" class="btn" value="search" style="display:inline-block;padding-top:5px ">
					</form>
				</div>
				<div class="col-1">
				<a href="kart.jsp"><button class="btn" id="kart"><i class="fa fa-cart-plus"></i></button></a>
				</div>
		</div>
		<div class="row" id="row">
			<%
			
			Class.forName("com.mysql.jdbc.Driver");
		//	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
			Connection con=DriverManager.getConnection("jdbc:mysql://awsdb.cg2a3l4mwr3i.ap-south-1.rds.amazonaws.com:3306/medicare","root","rootraja");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from product_table where ProductName='"+msg+"'");
			while(rs.next()){
			%>
			<div class="col-md-5 col-sm-4" style="height:100%;background-image:url('/Medicare/resources/IMG/<%=rs.getString("ImgName") %>');background-size:cover;background-repeat:no-repeat;background-position:center;"></div>
			<div class="col-md-7 col-sm-8" id="content" style="padding:50px 40px;">
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