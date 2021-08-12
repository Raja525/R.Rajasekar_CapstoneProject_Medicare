package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homecontroller {
	
	@RequestMapping("/")
	public void home(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		res.sendRedirect("home.jsp");
	}
	@RequestMapping("/page2")
	public void itemsearch(HttpServletRequest req,HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException
	{	
			
		String search=req.getParameter("search");
		res.sendRedirect("page2.jsp?msg="+search+"");
	}
	@RequestMapping("/notuser2")
	public void notusersearch(HttpServletRequest req,HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException
	{	
			
		String search=req.getParameter("search");
		res.sendRedirect("notuser2.jsp?msg="+search+"");
	}	
	@RequestMapping("/filter")
	public void filter(HttpServletRequest req,HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException
	{
		String filter=req.getParameter("checkbox");
		res.sendRedirect("page2.jsp?msg="+filter+"");
	}
	@RequestMapping("/notuserfilter")
	public void notuserfilter(HttpServletRequest req,HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException
	{
		String filter=req.getParameter("checkbox");
		res.sendRedirect("notuser2.jsp?msg="+filter+"");
	}
	@RequestMapping("/sort")
	public void sort(HttpServletRequest req,HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException
	{
		String sorting=req.getParameter("sort");
		res.sendRedirect("page2.jsp?msg="+sorting+"");
	}
	@RequestMapping("/notusersort")
	public void notusersort(HttpServletRequest req,HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException
	{
		String sorting=req.getParameter("sort");
		res.sendRedirect("notuser2.jsp?msg="+sorting+"");
	}
	@RequestMapping("/page3")
	public void page3(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		res.sendRedirect("page3.jsp");
	}
	@RequestMapping("/payment1")
	public void payment1(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		String name=req.getParameter("name");
		String mail=req.getParameter("mail");
		String mobile=req.getParameter("mobile");
		String address=req.getParameter("address");
		
		 HttpSession delivery=req.getSession();
		 delivery.setAttribute("name", name);
		 delivery.setAttribute("mail", mail);
		 delivery.setAttribute("mobile", mobile);
		 delivery.setAttribute("address", address);
		 
		res.sendRedirect("receiptpage1.jsp");
	}
	@RequestMapping("/signin")
	public void signin(HttpServletRequest req,HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException
	{
		String name=req.getParameter("username");
		String password=req.getParameter("password");
		int value=0;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select UserName,Password from userdata_table");
		while(rs.next())
		{
			if(name.equals(rs.getString("UserName")) && password.equals(rs.getString("Password")))
    		{
				value=1;
				HttpSession ses1=req.getSession();
				ses1.setAttribute("password", password);
    		}
		
    	}
		switch(value)
		{
			case 0:
			{
				res.sendRedirect("signin.jsp");
				break;
			}
			case 1:
			{
				res.sendRedirect("userhome.jsp?msg="+name+"");
				break;
			}
		}
    	
	}
	@RequestMapping("/signup")
	public void signup(HttpServletRequest req,HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException
	{
		String name=req.getParameter("username");
		String mail=req.getParameter("mailid");
		String mobile=req.getParameter("mobileno");
		String address=req.getParameter("address");
		String password=req.getParameter("password");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
		PreparedStatement ps=con.prepareStatement("insert into userdata_table(UserName,MailId,MobileNo,Address,Password)values(?,?,?,?,?)");
		ps.setString(1, name);
		ps.setString(2, mail);
		ps.setString(3, mobile);
		ps.setString(4, address);
		ps.setString(5, password);
		ps.executeUpdate();
		
		res.sendRedirect("signin.jsp");
	}
	@RequestMapping("/kart")
	public void kart(HttpServletRequest req,HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException
	{
		String itemid=req.getParameter("kart");
		//System.out.println(itemid);
		HttpSession ses1=req.getSession();
		HttpSession ses2=req.getSession();
		String username=(String) ses1.getAttribute("username");
		String mail=(String) ses2.getAttribute("Mail");
		String product=(String) ses2.getAttribute("ProductName");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
		PreparedStatement ps=con.prepareStatement("insert into kart_table(UserName,MailId,ProductId)values(?,?,?)");
		ps.setString(1, username);
		ps.setString(2, mail);
		ps.setString(3, itemid);
		ps.executeUpdate();
		res.sendRedirect("page3.jsp?msg="+product+"");
	}
	@RequestMapping("/admin")
	public void admin(HttpServletRequest req,HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException
	{
		String name=req.getParameter("username");
		String pass=req.getParameter("password");
		
		if(name.equals("admin") && pass.equals("123"))
		{
			res.sendRedirect("adminhome.jsp");
		}else
		{
			res.sendRedirect("admin.jsp");
		}
		
	}
	@RequestMapping("/addproduct")
	public void addproduct(HttpServletRequest req,HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException
	{
		//add adminhome.jsp parameters here
		String productname=req.getParameter("productname");
		String price=req.getParameter("price");
		String description=req.getParameter("description");
		String category=req.getParameter("category");
		String imgname=req.getParameter("imgname");
		String producttype=req.getParameter("producttype");
		String brand=req.getParameter("brand");
		String status=req.getParameter("status");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
		PreparedStatement ps=con.prepareStatement("insert into product_table(ProductName,Price,Description,Category,ImgName,ProductType,Brand,Status)values(?,?,?,?,?,?,?,?)");
		ps.setString(1, productname);
		ps.setString(2, price);
		ps.setString(3, description);
		ps.setString(4, category);
		ps.setString(5, imgname);
		ps.setString(6, producttype);
		ps.setString(7, brand);
		ps.setString(8, status);
		ps.executeUpdate();
		res.sendRedirect("adminhome.jsp");
	}
	@RequestMapping("/adminupdate")
	public void adminupdate(HttpServletRequest req,HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException
	{
		HttpSession update=req.getSession();
		String id=(String)update.getAttribute("Id");
		String productname=req.getParameter("productname");
		String price=req.getParameter("price");
		String description=req.getParameter("description");
		String category=req.getParameter("category");
		String imgname=req.getParameter("imgname");
		String producttype=req.getParameter("producttype");
		String brand=req.getParameter("brand");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
		PreparedStatement ps=con.prepareStatement("update product_table set ProductName='"+productname+"', Price='"+price+"', Description='"+description+"', Category='"+category+"', ImgName='"+imgname+"', ProductType='"+producttype+"', Brand='"+brand+"' where Id='"+id+"'");
		ps.executeUpdate();
		res.sendRedirect("adminhome.jsp");
	}
	@RequestMapping("/admindelete")
	public void admindelete(HttpServletRequest req,HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException
	{
		String deleteid=req.getParameter("id");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
		PreparedStatement ps=con.prepareStatement("delete from product_table where Id='"+deleteid+"'");
		ps.executeUpdate();
		res.sendRedirect("adminhome.jsp");
	}
	int count=0;
	@RequestMapping("/adminstatus")
	public void adminstatus(HttpServletRequest req,HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException
	{
		count++;
		HttpSession ses=req.getSession();
		ses.setAttribute("count",count);
		
		String status=req.getParameter("status");
		//System.out.println(status);
		String arr[]=status.split(" ");
		//System.out.println(arr[0]);
		//System.out.println(arr[1]);
		if(arr[1].equals("enable")) {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
		PreparedStatement ps=con.prepareStatement("update product_table set Status='disable' where Id='"+arr[0]+"'");
		ps.executeUpdate();
		
		}else
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
			PreparedStatement ps=con.prepareStatement("update product_table set Status='enable' where Id='"+arr[0]+"'");
			ps.executeUpdate();
			
		}
		res.sendRedirect("adminhome.jsp");
	}
}
