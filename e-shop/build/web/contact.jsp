<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Contact</title>
<style type="text/css">
.right {	text-align: right;
}
</style>
<link href="italics.css" rel="stylesheet" type="text/css" />
</head>

<body>

<center> 
<form action="loginconf.jsp" method="post">
  <table width="993" height="102" border="0">
    <tr>
         <a href="main.jsp"> <img src="head.png" width="251" height="88" alt="Logo" /> </a>
    <hr /> </td>
      <td width="713" class="right">  <a href="main.jsp"> Home </a> | 
        <% if(session.getAttribute("uname")==null) {
			%>
            <a href="login.jsp">Login</a> | <a href="register.jsp">Sign Up |</a> <a href="contact.jsp"> Contact us </a>
            <%} else {
				%>
                <a href="logout.jsp">Logout</a>
                <%}%>
                </td>
    </tr>
  </table>
  <hr />
  <p>&nbsp;</p>
  <tr> 
<header  style="font-size:150%;"> Contact Info </header> 


<p1> Technical and Delivery Support: 25486618 </p1> <br>
<p2> Address : Glavani, Volos 38221 </p2>
</body>
</html>