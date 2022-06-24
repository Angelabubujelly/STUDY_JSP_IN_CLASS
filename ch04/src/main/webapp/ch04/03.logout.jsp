<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  logout이 호출되면 세션을 끊고 다시 login으로 보내는거얌-->
<%
	session.invalidate();
	response.sendRedirect("03.login.jsp");
%>
</body>
</html>