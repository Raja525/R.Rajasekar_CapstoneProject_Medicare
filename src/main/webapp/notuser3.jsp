<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%
    	String msg=request.getParameter("msg");
    HttpSession ses2=request.getSession();
	ses2.setAttribute("ProductName", msg);
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
</head>
<body>
	<div>
		<div id="navbar" class="row">
			<a href="home.jsp"  class="col-2" style="text-decoration:none;color:black;"><div id="logo">Medicare</div></a>
				<div class="col-10" id="searchcontainer">
					<form action="" method="post" class="form-inline">
					<input placeholder="search" type="search" name="search" id="searchbar" class="form-control"  style="display:inline-block; ">
					<input type="submit" class="btn" value="search" style="display:inline-block;padding-top:5px ">
					</form>
				</div>
				
		</div>
		
		<div class="row" style="height:540px;padding:40px 50px;margin:0px;">
			<%
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from product_table where ProductName='"+msg+"'");
			while(rs.next()){
			%>
			
			<div class="col-5" style="heigth:100%;background-image:url('/Medicare/resources/IMG/<%=rs.getString("ImgName") %>');background-size:cover;background-repeat:no-repeat;background-position:center;">
			</div>
		
			<div class="col-7" style="padding:50px 40px;">
						<div style="font-family:'Montserrat',sans-serif;"><%=rs.getString("ProductName") %></div>
						<h3><%=rs.getString("Brand") %> (<%=rs.getString("ProductType") %>)</h3>
						<div>Category:<%=rs.getString("Category") %></div>
						<p>Description: <%=rs.getString("Description") %><br>
						<div>Price: Rs.<%=rs.getString("Price") %></div>
					<div style="padding:20px 0px;">
						<a href="payment1.jsp?msg=<%=rs.getString("Id") %>"><button class="btn btn-primary" style="margin-right:20px;">Buy</button></a>
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
		alert("Item added to Kart!")
	}
	</script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>