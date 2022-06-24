<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String siteName = request.getParameter("siteName");
String siteTel =request.getParameter("siteTel");
%>
<p>include Action Top입니다.</p>
<%=siteName%>
<%=siteTel%>
</body>
</html>