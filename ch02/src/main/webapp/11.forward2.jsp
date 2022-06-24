<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    request.setCharacterEncoding("EUC-KR");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Forward Tag Ex</h1>
당신의 아이디는<b><%=id %></b>입니다.
당신의 비밀번호는 <b><%=pw %></b>입니다.
</body>
</html>