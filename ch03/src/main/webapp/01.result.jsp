<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
request.setCharacterEncoding("EUC-KR");
String name = request.getParameter("name");
String studentNum = request.getParameter("studentNum");
String gender = request.getParameter("gender");
String major = request.getParameter("major");
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
당신의 이름은 <b><%=name %></b>입니다.<br>
당신의 학번은 <b><%=studentNum %></b>번 입니다.<br>
당신의 성별은 <b><%=gender %></b>입니다.<br>
당신의 전공은 <b><%=major %></b>입니다.
</body>
</html>