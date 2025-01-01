<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String s=(String)session.getAttribute("msg");
if(s==null)
{
 response.sendRedirect("driverauth.jsp"); 
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
	hello
	<a href="getallbooking.jsp">getallbooking</a>
	<br>
</body>
</html>
<%} %>