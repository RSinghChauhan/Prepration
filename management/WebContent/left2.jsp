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
<div id="left2">



<%Class.forName("com.mysql.jdbc.Driver");
Connection con6= DriverManager.getConnection("jdbc:mysql://localhost:3306/photo","root", "admin");
Statement stmt6 = con6.createStatement();


%>

<%
 ResultSet rs =stmt6.executeQuery("select * from offer");

if(rs.next()){

}
 
%>
<form>
	<table  width="100%" height="70%">
<tr><td align="center" width=100%><img alt="<%= rs.getString(3) %>" src=".<%=rs.getString(2) %>" width="750px" height="230px"></td></tr>


</table>
<br>
<br>



</form>




</div>

</body>
</html>