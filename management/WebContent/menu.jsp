<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

<%Class.forName("com.mysql.jdbc.Driver");
Connection con1= DriverManager.getConnection("jdbc:mysql://localhost:3306/photo","root", "admin");
Statement stmt2 = con1.createStatement();
ResultSet resultset1 =stmt2.executeQuery("select menu_name,link from menu");

%>


<table width="100%">
				<tr>
				<td style="text-align:left;color:#ffffff;margin-left:25%;">
<% while(resultset1.next()){ %>	
			<a href="<%= resultset1.getString("link") %>"><%= resultset1.getString("menu_name") %></a> | &nbsp;&nbsp;
<%} %>
			</td>
			<td style="text-align:right;color:#ffffff;"><%= session.getAttribute("name")!=null?session.getAttribute("name"):"" %></td>
			<td>    
				<input type="text" value="Search" /><button><img src="./upload/search.png" style="margin:1px;" height="10px" /></button>
			</td>
			
			
			</table>
			
</body>
</html>