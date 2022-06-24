<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String name = request.getParameter("name");
    String blood = request.getParameter("bloodType");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%=name %>님의 혈액형은
<%=blood %>입니다.

</body>
</html>