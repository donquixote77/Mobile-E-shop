<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.right {	text-align: right;
}
</style>
</head>

<body>
<%@ page language="java" %>
    <%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
<table width="993" height="102" border="0">
   <tr>
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

<p> Order Confirmed:</p>


<% 
       PreparedStatement ps;
        Connection conn;
        ResultSet rs= null;
        String username=(String)session.getAttribute("username");
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?autoReconnect=true&useSSL=false","root","koropi");
         Statement st=conn.createStatement();
		 String sql = "SELECT * from shopcart where username=?"; 
		 ps = conn.prepareStatement (sql);
		 ps.setString(1,username);
	 rs = ps.executeQuery (); 
	 while(rs.next())
	 {
%>

<table width="992" border="1" cellspacing="0">
  <tr>
    <td width="66" align="center"><strong>Item ID</strong></td>
    <td width="354" align="center"><strong>Product Name &amp; Model</strong></td>
    <td width="237" align="center"><strong>Price</strong></td>
  </tr>
  <tr>
    <td height="75" align="center"><%=rs.getString(4)%></td>
    <td align="center"><%=rs.getString(2)%></td>
    <td align="center"><%=rs.getDouble(3)%></td>
  </tr>
</table>
<%}%>


 <%
		 String sum_sql = "SELECT SUM(price) from shopcart where username=?"; 
		 ps = conn.prepareStatement(sum_sql);
		 ps.setString(1,username);
                 rs = ps.executeQuery (); 
	 if(rs.next())
	 {
             double total = rs.getDouble(1) + 5.0 ;
%>
 
 <table width="500" border="1" cellspacing="0">
  <tr>
 
    <td width="150" align="center"><strong>Device's Price</strong></td>
    <td width="80" align="center"><strong>Shipping Charges</strong></td>
    <td width="150" align="center"><strong>Total Price </strong></td>
   

  </tr>
  <tr>
    <td align="center"><%=rs.getDouble(1)%></td>
    <td align="center"> 5 $</td>
    <td align="center"><%=total%></td>
   
 <br
  </tr>
    
 <%}%>
</table>



<p> Thanks for shopping with us. Your order will be delivered within 2-3 days.</p>
<p><strong> Happy Shopping! </strong></p>


<%@ page import = "java.util.Date" %>

<%
        Date mydate = new Date(); 
         
        String date = mydate.toString();
         
         %>

<%
                String address = null ;
                String mphone = null ;
                String name = null ;
                String uname = null;
                
                
		 String cred_sql = "SELECT * from regshop where username=?"; 
		 ps = conn.prepareStatement (cred_sql);
		 ps.setString(1,username);
                 rs = ps.executeQuery (); 
	 if(rs.next())
	 {
            name = rs.getString(1);
            uname = rs.getString(2);
            mphone = rs.getString(4);
            address = rs.getString(5);
            
                     }

         %>


<%
               String mob_name = null ;
               Double price = 0.0 ;
               String pid = null ;
                
         
String get_sql = "SELECT * from shopcart where username=?"; 
		 ps = conn.prepareStatement(get_sql);
		 ps.setString(1,username);
                 rs = ps.executeQuery (); 
	 while(rs.next())
	 {
             mob_name = rs.getString(2);
             price = rs.getDouble(3);
             pid = rs.getString(4);
             
             
             
            ps= conn.prepareStatement("insert into final values (?,?,?,?,?,?,?)");
            ps.setString(1,uname);
            ps.setString(2,name);
            ps.setString(3,address);
            ps.setString(4,mphone);
            ps.setString(5,pid);
            ps.setDouble(6,price);
            ps.setString(7,date);
            
         
        
               int insertResult = ps.executeUpdate();
             if (insertResult==0)
            {
                        String newLine = System.getProperty("line.separator");
                        out.println("ERRROR INSERTING IN FINAL");

                 
            }
             
         }
             
          
             
             
             
%>



<%
      
 
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?autoReconnect=true&useSSL=false","root","koropi");
              
               String del_sql = "DELETE from shopcart where username=?"; 
		 ps = conn.prepareStatement( del_sql);
		 ps.setString(1,username);
                 int delResult = ps.executeUpdate();
                  if (delResult!=0)
            {
                 out.println("Successfully reset");
            }       
                 
                 
	
%>

</body>
</html>