<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<p>include 지시자의 bottom입니다 우후훗</p>
<%
Date date = new Date();
%>
<%=date.toLocaleString()%>
</body>
</html>