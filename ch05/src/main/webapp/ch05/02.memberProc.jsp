<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="regBean" class="ch05.MemberBean"/>
<jsp:setProperty name="regBean" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" name="regForm2" action="02.result.jsp">
<table border="1" style="border-collapse:collapse" >
      <tr >
       <th bgcolor="#9DD7FA"colspan="2">
<%--        <jsp:getProperty name ="regBean" property = "name"/> --%>
       &emsp;회원님이 작성한 내용입니다. 확인해주세요.&emsp;
       </th>
    </tr>
    <tr>
        <td>아이디</td>
        <td><jsp:getProperty name="regBean" property="id"/></td>
    </tr>
    <tr>
        <td>패스워드</td>
       <td><jsp:getProperty name="regBean" property="pwd"/></td>
    </tr>
    <tr>
        <td>이름</td>
        <td><jsp:getProperty name="regBean" property="name"/></td>
    </tr>
    <tr>
        <td>생년월일</td>
        <td><jsp:getProperty name="regBean" property="birth"/></td>
    </tr>
    <tr>
        <td>이메일</td>
        <td><jsp:getProperty name="regBean" property="email"/></td>
    </tr>
    <tr align="center" >
    <td colspan="2" align="center" >
    <input type="submit" value="확인완료">&emsp;
     <input type="button" value="다시쓰기" onClick="history.back()"></td>
    </tr>
    </table>
 </form>
</body>
</html>