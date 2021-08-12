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
<link href="/Medicare/resources/CSS/style.css" rel="stylesheet" type="text/css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet"> 
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"> 
<title>My Kart</title>
<style type="text/css">
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
						<div class="col-md-4 col-sm-12 imgcontainer" style="background-image:url('/Medicare/resources/IMG/<%=rs1.getString("ImgName") %>');background-size:cover;background-repeat:no-repeat;background-position:center;">
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
