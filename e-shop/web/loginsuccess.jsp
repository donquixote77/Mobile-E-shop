<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.right {text-align: right;
}
</style>
</head>

<body>
 <p>
   <%@ page import="java.sql.*" %>
   
  <table width="993" height="102" border="0">
      
      
     <tr>
         
           <a href="main.jsp"> <img src="head.png" width="251" height="88" alt="Logo" /> </a>
    <hr /> </td>
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
<br />
 Welcome <%=session.getAttribute("name")%>,
 <p>Click <a href="main.jsp
">here</a> to go to the Home Page.
   </p> 

</body>
</html>