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
<!--  html���� �޾ƿ� �ּҿ� ������ ���..-->
<body>
<h1>�� ���� �װ� ����!!!!!</h1>
<jsp:include page="10.ac.includeEx3.jsp">
	<jsp:param value="��������¼��" name="adress"/>
	<jsp:param value="�����򰡾�¼��" name="course"/>
</jsp:include>
<hr>

<%=adress %>
<%=course %>
</body>
</html>