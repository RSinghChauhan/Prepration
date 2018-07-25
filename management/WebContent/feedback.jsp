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
</head>
<body>
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
<div id="left2">
<br/>

<%
String feedback=request.getParameter("feedback");
String userId=(String)session.getAttribute("userId");
Class.forName("com.mysql.jdbc.Driver");
Connection com5= DriverManager.getConnection("jdbc:mysql://localhost:3306/photo","root", "admin");
if(feedback!=null && userId!=null)
{
	Statement s=com5.createStatement();
	s.execute("INSERT INTO photo.feedback(feedback,user_id) VALUES('"+feedback+"',"+userId+")");
	
}
Statement stmt5 = com5.createStatement();
%>


<%
 ResultSet resultset5=stmt5.executeQuery("select * from feedback");

if(resultset5.next()){
out.print(resultset5.getString(2));
		} 
else
{
%>
<form action="feedback.jsp">
	<h2><font color="#FFFFFF">Enter your Feedback : </font></h2><br/>
<textarea name="feedback" rows="4" cols="100"></textarea><br/><br/><br/>
<input type="submit"></form>
<%} %>
<br><br/><br/>
</div>
</div>



<div id= "footer">
<%@ include file="footer.jsp" %>
</div></div>
</center>

</body>
</html>