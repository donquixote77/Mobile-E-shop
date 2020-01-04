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
<%@ page language="java" %>
<table width="993" height="102" border="0">
  <tr>
      <a href="main.jsp"> <img src="head.png" width="251" height="88" alt="Logo" /> </a>
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
<hr />
<% if(session.getAttribute("username")!=null) {
	session.invalidate();
	out.println("Successfully Logged out.");
	%>
    <script type="text/javascript">
function Redirect()
{
    window.location="main.jsp";
}
document.write("You will be redirected to the home page in a few seconds");
setTimeout('Redirect()', 3000);
</script>
<%
}
else
{%>
You're already Logged out. 
Click <a href="main.jsp">here</a> to go to the home page.
<%}%>
</body>
</html>