<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%
 request.setCharacterEncoding("EUC-KR");
 String id = request.getParameter("id");
 String pw = request.getParameter("pw");
 session.setAttribute("idKey",id);
 session.setMaxInactiveInterval(60*60);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="10.연습3.jsp" method="post">
<h1>떠나고 싶은 여행지가 있나용?</h1>
<input type="checkbox" name="place" value="티바트">티바트<br>
<input type="checkbox" name="place" value="달">달<br>
<input type="checkbox" name="place" value="홍콩">홍콩<br>
<input type="checkbox" name="place" value="올림푸스">올림푸스<br>
<input type="submit" value="고고링">
</form>
</body>
</html>