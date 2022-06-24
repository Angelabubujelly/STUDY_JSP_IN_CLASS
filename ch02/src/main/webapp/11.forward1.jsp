<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    request.setCharacterEncoding("EUC-KR");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Forward Tag Ex</h1>
	Forward Tag의 포워딩 되기 전의 페이지입니다.<p/>
	<jsp:forward page="11.forward2.jsp"></jsp:forward>
</body>
</html>