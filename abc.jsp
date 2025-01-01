<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String s=(String)session.getAttribute("msg");
if(s.equals("cab book successfully"))
{
 /* response.sendRedirect("adminauth.jsp");  */
 out.print("cab book successfully");
}
else if(s.equals("ur ride is cancell"))
{
	out.print("ur ride is cancell");
}
else
{
	/* session.removeAttribute("msg"); */
	out.print("cab book successfully");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>hello
</body>
</html>
<% }%>