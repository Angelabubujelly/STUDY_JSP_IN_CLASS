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
request.setCharacterEncoding("EUC-KR");
/* String name = request.getParameter("name"); */
String name = "소쿤..";
%>
<h1>액션태그 include</h1>
<jsp:include page="08.action3.jsp"></jsp:include>
<hr>
include Action의 Body입니다.
<%=name %>
</body>
</html>