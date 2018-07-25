<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping</title>
<link rel="stylesheet" type="text/css" href="CSS/Style.css">
<body background="./upload/background.jpg">
<style type="text/css">
.price {
	display: block;
}
</style>
</head>
<body>

<% session.getAttribute("name"); %>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<center>
<div id="container" >
<div id="top" align="left">
	<%@ include file="top.jsp" %>
</div>
<div id="menu">
<%@ include file="logmenu.jsp" %>
</div>
<div id ="cen">
<div id="left2">

<%

Class.forName("com.mysql.jdbc.Driver");
Connection com7= DriverManager.getConnection("jdbc:mysql://localhost:3306/photo","root", "admin");
Statement stmt7 = com7.createStatement();
%>


<%
ResultSet resultset7=stmt7.executeQuery("select * from product");

%>

<form action="">
<table border="0" >

<%
String id_pa=null;
while(resultset7.next()){
	id_pa=resultset7.getString("id");
	//out.print(id_pa);
	%>
	<tr><td><br>
<img width="200px" height="100px" align="left" alt="<%= resultset7.getString("detail") %>" src="./upload/<%= resultset7.getString("logo") %>" ><br><br><br><br><br><br>
</td>
<td><p><font color="#FFFFFF"><b><%= resultset7.getString("name") %></b></font></p></td>
<td><font ><p class="price"><%= resultset7.getString("price") %> : <%= resultset7.getString("detail") %></p></font></td><td><a href="product.jsp?id=<%= id_pa %>" class='price'>
<img src="./upload/buy.jpeg" style="margin:1px;" height="80px" /></a></td></tr>	
	<%
		}

%>

</table>
</form>
<br>
</div>
</div>



<div id= "footer">
<%@ include file="footer.jsp" %>
</div></div>
</center>

</body>
</html>