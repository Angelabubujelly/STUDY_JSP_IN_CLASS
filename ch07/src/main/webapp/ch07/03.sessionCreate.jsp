<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setAttribute("idKey", "ezen");
	session.setAttribute("PwKey","1234");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>세션이 생성됨</h3>
<h3>세션 정보는 <a href="03.testSession.jsp">여기를 클릭하세요.</a></h3>
</body>
</html> 