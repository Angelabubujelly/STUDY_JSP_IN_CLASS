<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%
 request.setCharacterEncoding("EUC-KR");
 String id = request.getParameter("id");
 String pw = request.getParameter("pw");
 session.setAttribute("idKey",id);
 session.setMaxInactiveInterval(60*60);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="10.����3.jsp" method="post">
<h1>������ ���� �������� �ֳ���?</h1>
<input type="checkbox" name="place" value="Ƽ��Ʈ">Ƽ��Ʈ<br>
<input type="checkbox" name="place" value="��">��<br>
<input type="checkbox" name="place" value="ȫ��">ȫ��<br>
<input type="checkbox" name="place" value="�ø�Ǫ��">�ø�Ǫ��<br>
<input type="submit" value="���">
</form>
</body>
</html>