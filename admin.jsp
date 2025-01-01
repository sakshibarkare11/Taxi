<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
String s=(String)session.getAttribute("msg");
if(s==null)
{
 response.sendRedirect("adminauth.jsp"); 
}
else
{
	session.removeAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="getallbooking.jsp">getallbooking</a>
	<br>
	<a href="getallspecificbooking.jsp">getallspecificbooking</a>
	<br>
	<a href="deletebooking.jsp">DeleteBooking</a>
	<br>
	<a href="servicecar.jsp">servicecar</a>
</body>
</html>
<%} %>