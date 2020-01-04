<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sign Up</title>
<style type="text/css">
.right {	text-align: right;
}
</style>
</head>

<body>
 <center>
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
   <strong><em>Register here</em></strong>
   <form action="reg.jsp"><table><b>
           <tr><td>Name</td><td><input type="text" name="name"></td></tr>
            <tr><td>Username</td><td><input type="text" name="username"></td></tr>
            <tr><td>Password</td><td><input type="password" name="password"></td></tr>
            <tr><td>Phone No.</td><td><input type="text" name="mphone"></td></tr>
            <tr><td>Address</td><td><textarea name="address"></textarea></td></tr>
                <br>
                </b></table><br />
     <input type="submit" value="Register" />
                    </form>
            <br><hr>
              Already Registered? To Login <a href="login.jsp">Click Here</a>
                <hr>
                
    </center>
</body>
</html>