<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping</title>
<link rel="stylesheet" type="text/css" href="CSS/Style.css">
<style type="text/css">
.price {
	display: block;
}
</style>
<script type="text/javascript">
function on(){
	confirm("Thank you, Your Order Booked Now! It will delivered at your Home in 3 Days have a GREAT DAY...)");
	
}
</script>
</head>
<body>
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
String id_p=request.getParameter("id");

Class.forName("com.mysql.jdbc.Driver");
Connection com8= DriverManager.getConnection("jdbc:mysql://localhost:3306/photo","root", "admin");
Statement stmt8 = com8.createStatement();
ResultSet rs_piz=stmt8.executeQuery("Select name,detail,price from product where id='"+id_p+"'");
while(rs_piz.next()){
	out.print("<h4>'"+rs_piz.getString(1)+"'</h4>");
	%>
	<a href="index.jsp"><input type="submit" value="Buy NOW" name="orderNow" onclick="on()" /></a>
	
	<%
	out.print("<br>");
	out.print("<h3>This Amezing Mobile Product Worth Cost Rs-"+rs_piz.getString(3)+"/-</h3>");
}

%>
</div>
</div>



<div id= "footer">
<%@ include file="footer.jsp" %>
</div></div>
</center>

</body>
</html>