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
            <td width="251" height="96"><img src="head.png" width="251" height="88" alt="Logo" /></td>
            <td width="726" class="right"><a href="contact.jsp">Contact us</a> | <a href="main.jsp">Home</a> |
              <% if(session.getAttribute("username")==null) {
			%>
              <a href="login.jsp">Login</a>
              <%} else {
				%>
               <a href="show_shop_cart.jsp">Shoping Cart</a> |                  
              <a href="logout.jsp">Logout</a>
              <%}%></td>
          </tr>
        </table>


    <%
       String username = (String)session.getAttribute("username");
      
        %>
          

      <%@ page language="java" %>
        <%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
  <%
      
       String hname="Grand";
       PreparedStatement ps;
        Connection con;
        ResultSet rs= null;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?autoReconnect=true&useSSL=false","root","koropi");
              
               String sql = "DELETE from shopcart where username=?"; 
		 ps = con.prepareStatement(sql);
		 ps.setString(1,username);
                 int insertResult = ps.executeUpdate();
                  if (insertResult!=0)
            {
                 out.println("Successfully reset");
            }       
                 
                 
	
%>

<jsp:forward page="show_shop_cart.jsp" /> 



</body>

