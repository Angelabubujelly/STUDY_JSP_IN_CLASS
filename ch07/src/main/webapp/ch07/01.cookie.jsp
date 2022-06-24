<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie = new Cookie("myCookie2", "Hello");
/*  생성할거 생성하고 */
	cookie.setMaxAge(60);
	cookie.setValue("Blebee");
	/*  add로 닫아 */
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Cookie를 사용하여 연결 유지</h2>
쿠키를 생성하였습니다.
쿠키의 내용은 <a href="01.testCookie.jsp">여기 클릭</a>
</body>
</html>