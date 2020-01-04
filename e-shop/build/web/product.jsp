<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.name {
	font-weight: bold;
	font-size: 36px;
}
.gnrl {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.center1 {
	text-align: center;
}
.center1 table {
	font-family: Arial, Helvetica, sans-serif;
	font-size: x-large;
	font-weight: bold;
}
normal {
	font-weight: normal;
}
normal {
	font-weight: normal;
}
normal {
	font-weight: normal;
}
normal {
	font-family: Arial, Helvetica, sans-serif;
}
.right {
	text-align: right;
}
.norm {
	font-family: Arial, Helvetica, sans-serif;
}
</style>
</head>

<body>
<table width="993" height="102" border="0">
    
    
   <tr>
       
        <a href="main.jsp"> <img src="head.png" width="251" height="88" alt="Logo" /> </a>
   
          <td width="713" class="right">  <a href="main.jsp"> Home </a> | 
        <% if(session.getAttribute("username")==null) {
			%>
            <a href="login.jsp">Login</a> | <a href="register.jsp">Sign Up </a> | <a href="contact.jsp"> Contact us </a> 
            <%} else {
				%>
                <a href="show_shop_cart.jsp">Shopping Cart</a> |               
                <a href="logout.jsp">Logout</a>|
                <a href="contact.jsp"> Contact us </a> 
                <%}%>
                </td>
      </tr>
</table>
<hr />
<p>
  <%@ page language="java" %>
        <%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
  <%
		String pid=request.getParameter("product");
		String hname="Grand";
		 PreparedStatement ps;
        Connection con;
        ResultSet rs= null;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?autoReconnect=true&useSSL=false","root","koropi");
      
         Statement st=con.createStatement();
		ps=con.prepareStatement("select * from mtable where prod_id=?");
		 ps.setString(1,pid);
		 rs=ps.executeQuery();
		 while(rs.next())
		 {
		 %>
<p class="name"><%=rs.getString(3)%> <%=rs.getString(2)%> </p>
         <%}
		 ps=con.prepareStatement("select * from pics where pic_id=?");
		 ps.setString(1,pid);
		 rs=ps.executeQuery();
		 while(rs.next())
		 {
		 %>
</p>
<table width="997" height="399" border="0">
  <tr>
    <td width="358" class="center1"><img src=<%=rs.getString(2)%> width="200" height="300" alt=hname/></td>
    <%}
    ps=con.prepareStatement("select * from mtable where prod_id=?");
		 ps.setString(1,pid);
		 rs=ps.executeQuery();
		 while(rs.next())
		 {
		 %>
    <td width="623" class="center1"><table width="466" height="200" border="0">
      <tr>
        <td width="179" class="center1">Model Name :</td>
        <td width="277" class="normal"><%=rs.getString(2)%></td>
      </tr>
      <tr>
        <td class="center1">Brand :</td>
        <td><%=rs.getString(3)%></td>
      </tr>
      <tr>
        <td class="center1">Price :</td>
        <td><%=rs.getString(4)%>$</td>
      </tr>
      <%}%>
    </table>
    <p>
    <form action="buy.jsp"> 
<input type="hidden" name="name" value=<%=pid%>> 
<input type="image" src="buy.png" name="buy" value="grand"> 
   
 </form></p>  

 <p>
    <form action="shop.jsp"> 
<input type="hidden" name="name" value=<%=pid%>> 
<input type="image" src="shopcart.png" name="cart" value="grand">
    
</form></p></td>
  </tr>
</table>
<p class="gnrl">GENERAL FEATURES</p>
<% 
rs.close();
ps=con.prepareStatement("select * from gnrl_specs where gs_id=?");
		 ps.setString(1,pid);
		 rs=ps.executeQuery();
		 %>
         <%
          while(rs.next())
		 {
		 %>
         <table width="630" border="1" cellspacing="0">
  <tr>
    <td width="127" class="norm">Processor</td>
    <td width="493"><%=rs.getString(2)%></td>
  </tr>
  
  
  
  <tr>
    <td class="norm">Operating System</td>
    <td><%=rs.getString(3)%></td>
  </tr>
  <tr>
    <td class="norm">Camera</td>
    <td><%=rs.getString(4)%></td>
  </tr>
  <tr>
    <td class="norm">Size</td>
    <td><%=rs.getString(5)%></td>
  </tr>
  
  <tr>
    <td class="norm">Ram</td>
    <td><%=rs.getString(6)%></td>
  </tr>
  
  <tr>
    <td class="norm">Memory</td>
    <td><%=rs.getString(7)%></td>
  </tr>
  

</table>
<p class="gnrl">
  <%}%>
