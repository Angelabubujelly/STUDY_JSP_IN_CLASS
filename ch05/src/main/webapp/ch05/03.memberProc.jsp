<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    %>
   <jsp:useBean id="regBean" class="ch05.PracMemberBean"/>
   <jsp:setProperty name="regBean" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" name="regForm2" action="03.result.jsp">
아이디 : <jsp:getProperty name="regBean" property="name"/><p/>
주소 : <jsp:getProperty name="regBean" property="adress"/><p/>
전화번호 : <jsp:getProperty name="regBean" property="phone"/><p/>
이메일 : <jsp:getProperty name="regBean" property="email"/><p/>
취미 : <jsp:getProperty name="regBean" property="hobby"/><p/>
<input type="submit" value="확인완료">&emsp;
<input type="button" value="다시쓰기" onClick="history.back()">
</form>
</body>
</html>