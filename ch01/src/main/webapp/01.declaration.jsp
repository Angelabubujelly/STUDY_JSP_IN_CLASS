<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%!
	String name = "��";
	int num = 2;
%>
<%
	String name2 = name + "�� ����ģ���� ���ذ��Դϴ�.";
%>
<%
String fight = "�� ����ģ���� ���ذ��Դϴ�.";
%>
<!-- <!--  --> ȣ���Ϸ��� %�ڿ� = �� �ڿ� �������̳� �޼ҵ带 �Է��ؾ� �� --> */
���� �̸��� <%=name %>�Դϴ�.<br>
<%=num %>�г� �Դϴ�.<br>
�ϰ���� ���� �ֽ��ϴ�. <%=name2 %>
</body>
</html>