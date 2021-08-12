<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%
    	String id=request.getParameter("msg");
    HttpSession delivery=request.getSession();
    delivery.setAttribute("itemid", id);
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
	<div style="background-color:#64C9CF;font-family:'Montserrat',sans-serif;font-size:32px;padding:20px;text-align:center;color:white;">Payment</div>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from product_table where Id='"+id+"'");
	while(rs.next()){
	%>
	<div>
			<a href="notuser3.jsp?msg=<%=rs.getString("ProductName") %>" style="text-decoration:none;color:black;">
					<div class="row" style="height:440px;padding:40px 50px;margin:0px;">
						<div class="col-md-4" style="heigth:100%;background-image:url('/Medicare/resources/IMG/<%=rs.getString("ImgName") %>');background-size:cover;background-repeat:no-repeat;background-position:center;"></div>
						<div class="col-md-8" id="content" style="padding:20px 40px;">
							<div class="" style="font-family:'Montserrat',sans-serif;"><%=rs.getString("ProductName") %></div>
							<span><%=rs.getString("Brand") %>(<%=rs.getString("ProductType") %>)</span>
							<div>Category: <%=rs.getString("Category") %></div>
							<p>Description:<br><%=rs.getString("Description") %>
							
							<div id="order" style="padding:10px 0px; font-family:'Montserrat',sans-serif; border-radius:5px;">Price: Rs.<%=rs.getString("Price") %></div>
						</div>			
						
					</div></a>
	</div>
	<%} %>
	<div class="row" id="row" style="margin:0px;">
				<div style="padding:0px 40px;font-family:'Montserrat',sans-serif;">Payment Details</div>
	<div class="col-6" style="padding:10px 40px;">

			<input type="number" name="cardnumber" placeholder="card number" class="form-control" id="form1" required>
			<input type="text" name="cardnumber" placeholder="owner name" class="form-control" id="form2" required>
			<input type="number" name="cardnumber" placeholder="cvv" class="form-control" id="form3" required>
			<input type="date" name="cardnumber" placeholder="exp date" class="form-control" id="form4" required>
			
	</div>
	<div class="col-6" style="padding:10px 40px;">
		<div >
	  			<form action="payment1" method="post">
	  				<input type="text" name="name" placeholder="Customername" class="form-control" id="form5" required>
					<input type="email" name="mail" placeholder="Mail Id" class="form-control" id="form6" required>
					<input type="number" name="mobile" placeholder="Mobile Number" class="form-control" id="form7" required>
					<input type="text" name="address" placeholder="Address" class="form-control" id="form8" required>
					<input type="submit" class="btn btn-primary">
	  			</form>
    	</div>
	</div>
	</div>
</body>
</html>