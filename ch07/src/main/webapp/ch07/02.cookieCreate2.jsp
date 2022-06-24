<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie = new Cookie("myCookie", "Hello");
	response.addCookie(cookie);
	response.addCookie(new Cookie("NAME", "EZEN"));
	/*AGE라고 INT형이 되는게아니라 무조건 String만 가능  */
	response.addCookie(new Cookie("AGE","28"));
	response.addCookie(new Cookie("GENDER", "Female"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
</head>
<body>
	<h2>쿠키 생성</h2>
	<h3>쿠키의 내용은 <a href="02.testsCookie.jsp">여기를 클릭하세요.</a></h3>
</body>
</html>