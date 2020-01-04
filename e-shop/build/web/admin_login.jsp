<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin Login</title>
</head>

<body>

 <%@ page language="java" %>
        <%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
<% 
       PreparedStatement ps;
        Connection conn;
        ResultSet rs= null;
      Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?autoReconnect=true&useSSL=false","root","koropi");
      
         Statement st=conn.createStatement();
%> 
<% 
boolean flag = false; 

String username = request.getParameter ("username"); 
String password = request.getParameter ("password"); 
%>

<% 
 
String sql = "SELECT username from adms where username=? And password =?"; 

try {  
ps = conn.prepareStatement (sql); 
ps.setString (1,username); 
ps.setString (2,password); 
rs = ps.executeQuery (); 
while (rs.next ()) { 
flag = true;  
} 
rs.close (); 
ps.close (); 
conn.close ();

} catch (Exception e) { 
out.println (e); 
} 
%>


<% 

if (flag) { 

%>

<jsp:forward page="admin.jsp" />

<%

} 
else { 
%>

<jsp:forward page="adminfail.jsp"/> 
<% 
} 
%>
</body>
</html>