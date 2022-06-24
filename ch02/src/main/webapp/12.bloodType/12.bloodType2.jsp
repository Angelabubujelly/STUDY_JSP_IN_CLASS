<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
            <%
    request.setCharacterEncoding("EUC-KR");
            String name = request.getParameter("name");
            String bloodType = request.getParameter("bloodType");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:forward page='<%=bloodType + ".jsp"%>'>
	<jsp:param value="<%=name %>" name="name"/>
</jsp:forward>
</body>
</html>