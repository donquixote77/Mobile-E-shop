<%-- 
    Document   : admin
    Created on : Dec 15, 2019, 9:31:01 PM
    Author     : Teo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Total Orders</h1>
    </body>
</html>


 <%@ page language="java" %>
        <%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>


  <%
      
       String hname="Grand";
       PreparedStatement ps;
       String mob_name = null;
        Connection con;
        ResultSet rs= null;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?autoReconnect=true&useSSL=false","root","koropi");
              
               String sql = "SELECT * from final"; 
		 ps = con.prepareStatement(sql);
                 rs = ps.executeQuery (); 
                 
                 
	 while(rs.next())
	 {
%>




<table width="992" border="1" cellspacing="0">
  <tr>
    <td width="66" align="center"><strong>Username</strong></td>
    <td width="354" align="center"><strong>Full Name</strong></td>
    <td width="153" align="center"><strong>Address</strong></td>
    <td width="50" align="center"><strong>Phone Number</strong></td>
    <td width="80" align="center"><strong>Product ID</strong></td>
    <td width="40" align="center"><strong>Product Price</strong></td>
    <td width="90" align="center"><strong>Date of order</strong></td>

  </tr>
  <tr>
    <td align="center"><%=rs.getString(1)%></td>
    <td align="center"><%=rs.getString(2)%></td>
    <td align="center"><%=rs.getString(3)%></td>
    <td align="center"><%=rs.getString(4)%></td>
    <td align="center"><%=rs.getString(5)%></td>
    <td align="center"><%=rs.getDouble(6)%></td>
    <td align="center"><%=rs.getString(7)%></td>
        
<br
  </tr>

</table>
 <%}%>