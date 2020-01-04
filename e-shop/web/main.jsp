<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Home</title>
<style type="text/css">
.right {
	text-align: right;
}
#form1 {
	text-align: center;
}
.normal {
	text-align: left;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
.unormal {
	font-family: Arial, Helvetica, sans-serif;
}
.center1 {	text-align: center;
}
</style>
</head>
<body>
<%@ page language="java" %>
<table width="993" height="330" border="0">
  <tr>
      <td width="205" height="89"> <a href="main.jsp"> <img src="head.png" width="251" height="88" alt="Logo" /> </a>
    <hr /> </td>
    <td width="772"><table width="723" height="88" border="0">
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
      <tr>
        <td><form id="form1" name="form1" method="post" action="search.jsp">
          <input name="search" type="text" id="search" size="60" />
          <label>
            <input type="submit" name="submit" id="button" value="Search" />
          </label>
        </form></td>
      </tr>
    </table>
    <hr /></td>
  </tr>
  <tr>
    <td><table width="251" height="482" border="0">
      <tr>
        <td height="184"><table width="242" height="171" border="0">
          <tr>
            <td class="normal">MOBILE BRANDS</td>
            <br
                <br
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="brand" /><input type="hidden" name="category" value="Samsung" /><input type="image" src="images/samsung.png" /></form></td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="brand" /><input type="hidden" name="category" value="Huawei" /><input type="image" src="images/huawei.png" /></form></td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="brand" /><input type="hidden" name="category" value="Sony" /><input type="image" src="images/sony.png" /></form></td>
          </tr>
          <tr>
            <td height="22"><form action="category.jsp">
            <input type="hidden" name="type" value="brand" /><input type="hidden" name="category" value="Xiaomi" /><input type="image" src="images/xiaomi.png" /></form></td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="brand" /><input type="hidden" name="category" value="Apple" /><input type="image" src="images/apple.png" /></form></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="201"><table width="243" height="180" border="0">
          <tr>
            <td width="233" class="normal">MOBILE OS TYPES</td>
            <br
                <br
          </tr>
          <tr>
            <td><form action="platform.jsp">
            <input type="hidden" name="type" value="mtype" /><input type="hidden" name="category" value="android" /><input type="image" src="images/android.png" /></form></td>
          </tr>
          <tr>
            <td><form action="platform.jsp">
            <input type="hidden" name="type" value="mtype" /><input type="hidden" name="category" value="apple" /><input type="image" src="images/ios.png" /></form></td>
          </tr>
        </table></td>
      </tr>
      
    </table></td>
    <td><table width="725" height="684" border="0">
      <tr class="normal">
        <td height="30">NEW ARRIVALS</td>
        <br
            <br
      </tr>
      <tr>
        <td height="261"><table width="714" height="258" border="0">
          <tr>
            <td width="228"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
<input type="hidden" name="product" value="s10"> 
<input name="buy" type="image" value="s10" src="images/galaxys.png" width="114" height="135"> 
</form></td>
              </tr>
            </table>
              <p class="center1">Samsung Galaxy S10</p>
              <p class="center1">Price: 299.99$</p>
            </td>
            <td width="240" class="center1"><table width="117" height="173" border="0" align="center">
              <tr>
                <td width="111"><form action="product.jsp"> 
<input type="hidden" name="product" value="mate20">
<input name="buy" type="image" value="mate20" src="images/mate20.jpg" width="125" height="135"> 
</form></td>
              </tr>
            </table></p>
              <p>Huawei Mate 20 pro </p>
              <p>Price: 324.99$</p></td>
            <td width="224"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
<input type="hidden" name="product" value="redmi8"> 
<input name="buy" type="image" value="redmi8" src="images/redmi8.jpg" width="125" height="120"> 
</form></td>
              </tr>
            </table>
              <p class="center1">Xiaomi Redmi 8 pro</p>
              <p class="center1">Price: 149.99$</p>
            </td>
              
              
              
              <td width="224"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
<input type="hidden" name="product" value="apple10"> 
<input name="buy" type="image" value="apple10" src="images/apple10.jpg" width="90" height="145"> 
</form></td>
              </tr>
            </table>
              <p class="center1">Apple I-phone 10</p>
              <p class="center1">Price: 599.99$</p>
            </td>
              
              
          </tr>
        </table></td>
      </tr>
            
      <tr class="normal">
        <td height="27">BEST SELLING MOBILES</td>
        <br
            <br
      </tr>
      <tr>
          
       
          <td height="261"><table width="714" height="258" border="0">
          <tr>
            <td width="228"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
<input type="hidden" name="product" value="mate10"> 
<input name="buy" type="image" value="mate10" src="images/mate10lite.jpg" width="130" height="115"> 
</form></td>
              </tr>
            </table>
              <p class="center1">Huawei Mate 10 Lite</p>
              <p class="center1">Price: 199.99$</p>
            </td>
            <td width="240" class="center1"><table width="117" height="135" border="0" align="center">
              <tr>
                <td width="111"><form action="product.jsp"> 
<input type="hidden" name="product" value="iphone9">
<input name="buy" type="image" value="iphone9" src="images/iphone9.jpg" width="130" height="145"> 
</form></td>
              </tr>
            </table></p>
              <p>Apple I-phone 9 plus</p>
              <p>Price: 324.99$</p></td>
            <td width="224"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
<input type="hidden" name="product" value="j7"> 
<input name="buy" type="image" value="j7" src="images/j7.jpg" width="104" height="135"> 
</form></td>
              </tr>
            </table>
              <p class="center1">Samsung Galaxy J7 2017</p>
              <p class="center1">Price: 159.99$</p>
            </td>
                
          </tr>
        </table></td>
          
          
      </tr>
      <tr class="normal">
        <td height="27">LOW BUDGET MOBILES</td>
      </tr>
      <tr>
          
        <td height="261"><table width="714" height="258" border="0">
          <tr>
            <td width="228"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
<input type="hidden" name="product" value="xperiaec1505"> 
<input name="buy" type="image" value="xperiaec1505" src="images/xperiaec1505.jpeg" width="75" height="155"> 
</form></td>
              </tr>
            </table>
              <p class="center1">Sony Xperia ec1505</p>
              <p class="center1">Price: 129.99$</p>
            </td>
            
              
           
              <td width="240" class="center1"><table width="117" height="173" border="0" align="center">
              <tr>
                <td width="111"><form action="product.jsp"> 
<input type="hidden" name="product" value="j7">
<input name="buy" type="image" value="j7" src="images/j7.jpg" width="100" height="135"> 
</form></td>
              </tr>
            </table></p>
              <p>Samsung Galaxy J7 2017 </p>
              <p>Price: 159.99$</p></td>
         
          
          
      </tr>
    </table></td>
  </tr>
</table>
        <br
    </br>
        
        
            <br
    </br>
               
          <a href="admin_log.jsp">Admin Login</a> | Copyright © 2020 Team 15 - All rights reserved
             
</body>
</html>
