<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Shoping Cart</title>
<style type="text/css">
.right {text-align: right;
}
</style>
</head>

<body>
     
 <%@ page language="java" %>
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
          

    <%
       String username = (String)session.getAttribute("username");
       String name = (String)session.getAttribute("name");
      
        %>
        
         <td height="75" align="center"><%=name%>'s Shopping Cart: <br <br </td>

          

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
              
               String sql = "SELECT * from shopcart where username=?"; 
		 ps = con.prepareStatement(sql);
		 ps.setString(1,username);
                 rs = ps.executeQuery (); 
                 
                 
	 while(rs.next())
	 {
%>




<table width="992" border="1" cellspacing="0">
  <tr>
    <td width="66" align="center"><strong>Product Name &amp; Model</strong></td>
    <td width="354" align="center"><strong>Price</strong></td>
    <td width="153" align="center"><strong>Add/Remove to/from Shopping cart</strong></td>

  </tr>
  <tr>
    <td height="75" align="center"><%=rs.getString(2)%></td>
    <td align="center"><%=rs.getDouble(3)%></td>
    
    <td align ="center"> 
    
    <form action="shop.jsp"> 
<input type="hidden" name="name" value=<%=rs.getString(4)%>> 
<input type="image" src="plus.png" name="add" value="grand"> 
      </form>
    
     <form action="minus.jsp"> 
<input type="hidden" name="name" value=<%=rs.getString(4)%>> 
<input type="image" src="minus.png" name="minus" value="grand"> 
   
      </form>
    
 
    </td>

<%--



 <td width="185" height="173" class="center1">
    <% pid=rs.getString(1);
	ps=con.prepareStatement("select * from pics where pic_id=?");
		 ps.setString(1,pid);
		 rs1=ps.executeQuery();
		 while(rs1.next())
		 {
			 %>
    <table width="120" height="133" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
<input type="hidden" name="product" value=<%=rs1.getString("pic_id")%>> 
<input name="buy" type="image" value="Image" src=<%=rs1.getString(2)%> width="73" height="105"> 
</form></td>
              </tr>
              <%}%>
      </table>


<--%>

    
<br
  </tr>

</table>
 <%}%>

 
 
  <br>
  <br>

 
 
 <%
                 Double total = 0.0;
		 String sum_sql = "SELECT SUM(price) from shopcart where username=?"; 
		 ps = con.prepareStatement(sum_sql);
		 ps.setString(1,username);
                 rs = ps.executeQuery (); 
	 if(rs.next())
	 {
             total = rs.getDouble(1);
%>
 
 <table width="500" border="1" cellspacing="0">
  <tr>
 
    <td width="354" align="center"><strong>Total Price</strong></td>
   

  </tr>
  <tr>
    <td align="center"><%=rs.getDouble(1)%> $</td>
   
 <br
  </tr>

</table>
 <%}%>
 

</body>
     <% if(total!=0.0) {
     
     %>
    
     
     <p>
    <form action="checkout.jsp"> 
    <input type="image" src="checkout.png" name="buy" value="grand"> 
   
    </form></p>
     
      <br> Do you wish to reset the Shopping Cart? <a href="delete.jsp">Reset</a>
     
     
     <%}%> 
 


</body>
