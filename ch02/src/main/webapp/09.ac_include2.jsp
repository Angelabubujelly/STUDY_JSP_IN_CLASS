<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    request.setCharacterEncoding("EUC-KR");
    String siteName = request.getParameter("siteName");
    String siteTel = request.getParameter("siteTel");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Action include Ex2</h1>
<jsp:include page="09.ac_include3.jsp">
		<jsp:param value="기본값은이젠이구요" name="siteName"/>
		<jsp:param value="5252" name="siteTel"/>
</jsp:include>
<hr>

<%=siteName %>
<%=siteTel %>
</body>
</html>