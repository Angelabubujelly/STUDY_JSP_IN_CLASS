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

<%=name %>���� ��������
<%=blood %>�Դϴ�.

</body>
</html>