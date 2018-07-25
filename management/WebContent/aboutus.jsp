<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping</title>
<link rel="stylesheet" type="text/css" href="CSS/Style.css">
</head>
<body background="./upload/background.jpg">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<center>
<div id="container" >
<div id="top" align="left">
	<%@ include file="top.jsp" %>
</div>
<div id="menu">
<%@ include file="menu.jsp" %>
</div>
<div id ="cen">
<div id="left2"><br>
<font color="#FFFFFF"> <center><h1> About Us</h1></center>
<br>


<%

Class.forName("com.mysql.jdbc.Driver");
Connection com4= DriverManager.getConnection("jdbc:mysql://localhost:3306/photo","root", "admin");
Statement stmt4 = com4.createStatement();
%>


<%
ResultSet resultset3=stmt4.executeQuery("select * from aboutus");

if(resultset3.next()){
out.print(resultset3.getString(2));
		}

%>
</font>
<br>
<br>
</div>
</div>



<div id= "footer">
<%@ include file="footer.jsp" %>
</div></div>
</center>

</body>
</html>