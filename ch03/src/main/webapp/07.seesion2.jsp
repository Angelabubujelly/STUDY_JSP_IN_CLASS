<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pw = request.getParameter("pwd");
/* 	������ �����ϴ� key���� ,�ְڶ� */
	session.setAttribute("idKey",id);
	session.setMaxInactiveInterval(60*5);
%>
<!-- �ٸ� �������� ���� ���ƿ͵� ������ �Ǵ���  -->
<h1>Session Ex</h1>
<form action="07.session3.jsp" method="post">
1. ���� �����ϴ� ������?<p/>
<input type="radio" name="season" value="��">��&emsp;
<input type="radio" name="season" value="����">����&emsp;
<input type="radio" name="season" value="����">����&emsp;
<input type="radio" name="season" value="�ܿ�">�ܿ�<p/><p/>
2. ���� �����ϴ� ������?<p/>
<input type="radio" name="fruit" value="����">����&emsp;
<input type="radio" name="fruit" value="���Ű��">���Ű��&emsp;
<input type="radio" name="fruit" value="������">������&emsp;
<input type="radio" name="fruit" value="���θӽ�Ĺ">���θӽ�Ĺ<p/><p/>
<input type="submit" value="����">&emsp;
<input type="reset" value="�ʱ�ȭ">
</form>
</body>
</html>