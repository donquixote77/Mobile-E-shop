<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>REG</title>
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
              <a href="login.jsp">Login</a> |
              <a href="contact.jsp"> Contact us </a>  
              <%} else {
				%>
              <a href="logout.jsp">Logout</a> 
              <a href="contact.jsp"> Contact us </a> |
              <%}%></td>
          </tr>
        </table>
        <%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
       
<%
        String m=null, mn=null;
        boolean flag = false; 
        String s=request.getParameter("name");
        String s1=request.getParameter("username");
        String s2=request.getParameter("password");
        String s3=request.getParameter("mphone");
	String s4=request.getParameter("address");
        PreparedStatement ps;
        Connection con;
        ResultSet rs= null;
       Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?autoReconnect=true&useSSL=false","root","koropi");
      
        try{
         Statement st=con.createStatement();
       
          ps= con.prepareStatement("insert into regshop values (?,?,?,?,?)");
            ps.setString(1,s);
            ps.setString(2,s1);
            ps.setString(3,s2);
            ps.setString(4,s3);
            ps.setString(5,s4);
        
               int insertResult = ps.executeUpdate();
             if (insertResult!=0)
            {
                  flag = true; 

            }   
        }
       catch (Exception e) { 
    out.println (e); 
    } 
%>


<% 

if (flag == false) { 

%>

<jsp:forward page="regfail.jsp" />
<%

} 
%>
       
        <br><hr>
                Success Registration <br>
               To Login <a href="login.jsp">Click Here</a>
                <hr>
</body>
</html>