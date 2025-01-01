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


	<form action="getallspecificbooking.jsp" method="post">
		<input type="hidden" name="comfort" value="standard"><br>
		<button>Standard</button>
		<br>
	</form>

	<form action="getallspecificbooking.jsp" method="post">
		<input type="hidden" name="comfort" value="economy"><br>
		<button>Economy</button>
		<br>
	</form>

	<form action="getallspecificbooking.jsp" method="post">
		<input type="hidden" name="comfort" value="business"><br>
		<button>Business</button>
		<br>
	</form>

	<form action="getallspecificbooking.jsp" method="post">
		<input type="hidden" name="comfort" value="vip"><br>
		<button>vip</button>
		<br>
	</form>

	<%
     String comfort=request.getParameter("comfort");

     if(comfort!=null)
     {
    	 Car c=new Car();
    	 List<BookCar> l=c.readAll(comfort);
    	 for(BookCar book:l)
    	 { 	
%>
	Name=<%=book.getName() %><br> Phone=<%=book.getPhone() %><br>
	startdes=<%=book.getStades() %><br> enddes=<%=book.getEnddes() %><br>
	timedate=<%=book.getTimedate() %><br> cartype=<%=book.getCartype() %><br>
	<br>
	<% }
     }
     %>
</body>
</html>