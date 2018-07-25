<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping</title>
</head>
<body>

<%Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/photo","root", "admin");
Statement stmt1 = con.createStatement();


%>

<%
ResultSet resultset =stmt1.executeQuery("select * from image");

if(resultset.next()){

}

%>

	<table border="0" height="97%">
<tr><td width=100%><img alt="" src=".<%=resultset.getString("logo") %>" width="300px" height="190px"></td>
<td> <img alt="" src=".<%=resultset.getString("banner") %>" width="800px"  height="190px">  



 </td></tr></table>
 
 
 
</body>
</html>