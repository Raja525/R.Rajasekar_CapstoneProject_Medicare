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
<title>paymentkart</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet"> 
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"> 
<style>

	
	#sec1
	{
		padding:50px;margin:50px 100px;border-radius:10px;background-color:white;box-shadow:0 5px 10px -5px;
	}
	.row
	{
		height:auto;padding:20px;margin:0px;
	}
	#form1,#form2,#form3,#form4
	{
		margin-bottom:10px;
	}
	@media only screen and (max-width:700px)
	{
		#sec1
		{
			padding:1%;
			margin:1% 4%;
			height:auto;
		}
	}
</style>
</head>
<body style="background-color:#EDF6E5;">
	<div id="navbar" class="row">
				<a href="userhome.jsp?msg=<%=name %>"  class="col-lg-2" style="text-decoration:none;color:black;"><div style="font-family:'Montserrat',Sans-serif;">Medicare</div></a>
	</div>
		<div id="sec1">
		<%
		ArrayList<String> list=new ArrayList<String>();
	Class.forName("com.mysql.jdbc.Driver");
//	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
	Connection con=DriverManager.getConnection("jdbc:mysql://awsdb.cg2a3l4mwr3i.ap-south-1.rds.amazonaws.com:3306/medicare","root","rootraja");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from kart_table where UserName='"+name+"' and MailId='"+mail+"'");
	while(rs.next())
	{
			list.add(rs.getString("ProductId"));
	}
	int total=0;
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
					<div class="row">
						<div class="col-md-4 col-sm-6" style="heigth:100%;background-image:url('https://medicareimage.s3.ap-south-1.amazonaws.com/IMG/<%=rs1.getString("ImgName") %>');background-size:cover;background-repeat:no-repeat;background-position:center;"></div>
						<div class="col-md-8 col-sm-6" id="content" style="padding:20px 40px;">
							<div style="font-family:'Montserrat',sans-serif;"><%=rs1.getString("ProductName") %></div>
							<span><%=rs1.getString("Brand") %>(<%=rs1.getString("ProductType") %>)</span>
							<div>Category: <%=rs1.getString("Category") %></div>
							<p>Description:<br><%=rs1.getString("Description") %>
							
							<div id="order" style="padding:10px 0px; font-family:'Montserrat',sans-serif; border-radius:5px;">Price: Rs.<%=rs1.getString("Price") %></div>
						</div>			
						
					</div>		
			</a>
	
	<%} 
	
	}%>
	</div>
	<div class="row" style="margin:0px;">
		<div style="padding:0px 40px;font-family:'Montserrat',sans-serif;">Payment Details</div>
	<div class="col-lg-7 col-sm-12" style="padding:40px;">
			<div style="padding:30px;border-radius:10px;background-color:white;box-shadow:0 5px 10px -5px;">
			<input type="number" name="cardnumber" placeholder="card number" class="form-control" id="form1" required>
			<input type="text" name="cardnumber" placeholder="owner name" class="form-control" id="form2" required>
			<input type="number" name="cardnumber" placeholder="cvv" class="form-control" id="form3" required>
			<input type="date" name="cardnumber" placeholder="exp date" class="form-control" id="form4" required>
			<a href="multireceipt.jsp?msg=<%=name%>"><button type="submit" class="btn btn-primary" onclick="click()" name="btn">Proceed</button></a>
			</div>
	</div>
	<div class="col-lg-5 col-sm-12" style="padding:40px;">
		<div style="padding:20px;border-radius:10px;background-color:white;box-shadow:0 5px 10px -5px;">
	   <%
	   	String password=(String)ses1.getAttribute("password");
	   	
	   //	System.out.println(name+" "+password);
	   Class.forName("com.mysql.jdbc.Driver");
	//	Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
		Connection con2=DriverManager.getConnection("jdbc:mysql://awsdb.cg2a3l4mwr3i.ap-south-1.rds.amazonaws.com:3306/medicare","root","rootraja");
		Statement st2=con2.createStatement();
		ResultSet rs2=st2.executeQuery("select * from userdata_table where UserName='"+name+"' and Password='"+password+"'");
		while(rs2.next())
		{
			
    	%>
    		<div style="text-align:center;padding:10px;font-family:'Montserrat',sans-serif">Customer Address</div>
    		<div><span style="font-family:'Montserrat',sans-serif;">Customer Name :</span> <%=rs2.getString("UserName") %></div>
    		<p><span style="font-family:'Montserrat',sans-serif;">Address :</span> <br><%=rs2.getString("Address") %></p>
    		<p><span style="font-family:'Montserrat',sans-serif;">Mail Id :</span> <br><%=rs2.getString("MailId") %></p>
    		<p><span style="font-family:'Montserrat',sans-serif;">Mobile No :</span> <br><%=rs2.getString("MobileNo") %></p>
    	<%} %>
    	</div>
	</div>
	</div>
	<script>
		function click()
		{
			alert("Order Received Successfully!");
		}
	</script>
</body>
</html>