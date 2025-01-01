<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.dao.*"%>
<%@page import="com.pojo.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.2.1.min.js"></script>

</head>
<body>

	<% 
Car c=new Car(); 
List<BookCar> l=c.readAll("readall");
for(BookCar al:l)
{
%>
	name:<%=al.getName() %><br> phone:<%=al.getPhone() %><br>
	startdes:<%=al.getStades() %><br> enddes:<%=al.getEnddes() %><br>
	cartype:<%=al.getCartype() %><br> timedate:<%=al.getTimedate() %><br>

	<form action="SendSms" method="get">
		<input type="hidden" value="<%=al.getName() %>" name="name"> <input
			type="hidden" value="<%=al.getPhone() %>" name="phone">
		<button>Accept</button>
	</form>

	<input type="hidden" name="phone" value="<%=al.getPhone() %>">
	<button onclick="cancelRide()">Cancel Ride</button>

	<br>
	<br>

	<%}%>
	<script src="js/demo.js"></script>



</body>
</html>
