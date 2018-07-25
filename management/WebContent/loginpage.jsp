<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping</title>
<link rel="stylesheet" type="text/css" href="CSS/Style.css">
</head>
<body background="./upload/background.jpg">
<% session.removeAttribute("name");
//session.invalidate();
%>

<center>
<div id="container" >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div id="top">
	<%@ include file="top.jsp" %>
</div>
<div id="menu">
<%@ include file="menu.jsp" %>
</div>
<div id ="cen">
<table bgcolor="#d0ecfd" ><tr>
<td id ="left">
	<%@ include file="left.jsp" %>	

</td>
<td id="left2">

<%@ include file="left2.jsp" %>	

</td></tr></table>
</div>



<div id= "footer">
<%@ include file="footer.jsp" %>
</div></div>
</center>


</body>
</html>