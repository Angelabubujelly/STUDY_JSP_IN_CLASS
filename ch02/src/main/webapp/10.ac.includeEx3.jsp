<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<!-- include�� ���� �Ѱ��� �� �Ķ���� ����, ��ȭ��ȣ�� �п���,,
�۱� ��ȭ��ȣ�� �п��� ����Ͻ� -->
<body>
<%
String adress = request.getParameter("adress");
String course = request.getParameter("course");
%>
<p>include Action�� ž�Դϴٿ�</p>
<%=adress %>
<%=course %>
</body>
</html>