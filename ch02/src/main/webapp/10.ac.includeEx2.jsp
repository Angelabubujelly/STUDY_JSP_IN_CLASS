<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    request.setCharacterEncoding("EUC-KR");
    String adress = request.getParameter("adress");
    String course = request.getParameter("course");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<!--  html에서 받아온 주소와 과정명 출력..-->
<body>
<h1>흡 흐윽 네가 뭔데!!!!!</h1>
<jsp:include page="10.ac.includeEx3.jsp">
	<jsp:param value="구월동어쩌궁" name="adress"/>
	<jsp:param value="과정평가어쩌궁" name="course"/>
</jsp:include>
<hr>

<%=adress %>
<%=course %>
</body>
</html>