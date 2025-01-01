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
</head>
<body>
	<%
Car c=new Car();
List<BookCar> l=c.readAll("readall");
for(BookCar book:l)
{
%>
	radio=<%=book.getRadiogroup() %><br> name=<%=book.getName() %><br>
	startdes=<%=book.getStades() %><br> enddes=<%=book.getEnddes() %><br>
	timedate=<%=book.getTimedate() %><br> cartypr=<%=book.getCartype() %><br>
	<form action="BookCar" method="post">
		<input type="hidden" name="phone" value=<%=book.getPhone() %>>
		<input type="hidden" name="servlet" value=deleteservlet><br>
		<button>Delete</button>
		<br>
		<br>
	</form>
</body>
<%} %>
</html>