<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%
    	//String amount=request.getParameter("msg");
    //HttpSession ses3=request.getSession();
    //ses3.setAttribute("amount", amount);
    
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	#row
	{
		height:440px;padding:40px 50px;margin:0px;
	}
	#content
	{
		padding:20px 40px;
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
			padding:1% 4%;
		}
	}
</style>
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
	<div style="margin:10% 0;">
			<a href="notuser3.jsp?msg=<%=rs.getString("ProductName") %>" style="text-decoration:none;color:black;">
					<div class="row" id="row">
						<div class="col-md-4 col-sm-4" style="heigth:100%;background-image:url('/Medicare/resources/IMG/<%=rs.getString("ImgName") %>');background-size:cover;background-repeat:no-repeat;background-position:center;"></div>
						<div class="col-md-8 col-sm-8" id="content">
							<div class="" style="font-family:'Montserrat',sans-serif;"><%=rs.getString("ProductName") %></div>
							<span><%=rs.getString("Brand") %>(<%=rs.getString("ProductType") %>)</span>
							<div>Category: <%=rs.getString("Category") %></div>
							<p>Description:<br><%=rs.getString("Description") %>
							
							<div id="order" style="padding:10px 0px; font-family:'Montserrat',sans-serif; border-radius:5px;">Price: Rs.<%=rs.getString("Price") %></div>
						</div>			
						
					</div></a>
	</div>
	<%} %>
	<div class="row" style="margin:0px;">
		<div style="padding:0px 40px;font-family:'Montserrat',sans-serif;">Payment Details</div>
	<div class="col-md-7 col-sm-12" style="padding:50px;">

			<input type="number" name="cardnumber" placeholder="card number" class="form-control" id="form1" required>
			<input type="text" name="cardnumber" placeholder="owner name" class="form-control" id="form2" required>
			<input type="number" name="cardnumber" placeholder="cvv" class="form-control" id="form3" required>
			<input type="date" name="cardnumber" placeholder="exp date" class="form-control" id="form4" required>
			<a href="receiptpage.jsp"><input type="submit" onclick="payment()" class="btn btn-primary" name="btn" value="submit"></a>
		
	</div>
	<div class="col-md-5 col-sm-12" style="padding:40px;">
		<div style="padding:20px; border:solid 1px;">
	   <%
	   	HttpSession ses1=request.getSession();
	   	String name=(String)ses1.getAttribute("username");
	   	String password=(String)ses1.getAttribute("password");
	   	
	   //	System.out.println(name+" "+password);
	   Class.forName("com.mysql.jdbc.Driver");
		Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
		Statement st1=con1.createStatement();
		ResultSet rs1=st1.executeQuery("select * from userdata_table where UserName='"+name+"' and Password='"+password+"'");
		while(rs1.next())
		{
			
    	%>
    		<div style="text-align:center;padding:10px;font-family:'Montserrat',sans-serif">Customer Address</div>
    		<div><span style="font-family:'Montserrat',sans-serif;">Customer Name :</span> <%=rs1.getString("UserName") %></div>
    		<p><span style="font-family:'Montserrat',sans-serif;">Address :</span> <br><%=rs1.getString("Address") %></p>
    		<p><span style="font-family:'Montserrat',sans-serif;">Mail Id :</span> <br><%=rs1.getString("MailId") %></p>
    		<p><span style="font-family:'Montserrat',sans-serif;">Mobile No :</span> <br><%=rs1.getString("MobileNo") %></p>
    	<%} %>
    	</div>
	</div>
	</div>
	<script>
	function payment()
	{
		confirm("Can we Proceed with this Items!");
	}
	</script>
</body>
</html>