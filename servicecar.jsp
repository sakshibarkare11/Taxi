<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="BookCar" method="post">
		<input type="hidden" name="servlet" value="service"> <input
			type="text" name="sn" placeholder="Enter sn"><br> <input
			type="text" name="title" placeholder="Enter title"><br>
		<input type="text" name="description" placeholder="Enter description"><br>
		<button>Service</button>


	</form>
</body>
</html>