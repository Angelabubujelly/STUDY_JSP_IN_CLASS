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
����� �̸��� <b><%=name %></b>�Դϴ�.<br>
����� �й��� <b><%=studentNum %></b>�� �Դϴ�.<br>
����� ������ <b><%=gender %></b>�Դϴ�.<br>
����� ������ <b><%=major %></b>�Դϴ�.
</body>
</html>