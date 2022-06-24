<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script.js" charset="utf-8"></script>
</head>
<body>
<form method="post" name="regForm" action="02.memberProc.jsp">
   <table  border="1"  style="border-collapse:collapse;">
        <tr height="20%" bgcolor="#9DD7FA">
       <th align="center" colspan="3">회원가입</th>
    </tr>
    <tr>
        <td>아이디</td>
        <td><input type="text" name="id" size="25"></td>
        <td>아이디를 적어주세요</td>
    </tr>
    <tr >
        <td>패스워드</td>
        <td><input type="password" name="pwd"  size="25"></td>
        <td>패스워드를 적어주세요</td>
    </tr>
    <tr>
        <td>패스워드 확인</td>
        <td><input type="password" name="repwd"  size="25"></td>
        <td>패스워드를 확인합니다.</td>
    </tr>
    <tr>
        <td>이름</td>
        <td><input type="text" name="name"  size="25"></td>
        <td>고객실명을 적어주세요.</td>
    </tr>
    <tr>
        <td>생년월일</td>
        <td><input type="text" name="birth"  size="25"></td>
        <td>생년월일을 적어주세요.</td>
    </tr>
    <tr>
        <td>이메일</td>
        <td><input type="text" name="email"  size="25"></td>
        <td>이메일을 적어주세요.</td>
    </tr>
    <tr align="center" >
    <td colspan="3" align="center" >
    <!--  submit하면 바로 전송이기떄문에 button으로 해서 자바스크립트 통하게 만들거얌-->
    <input type="button" value="회원가입" onClick="inputCheck()">&emsp;
     <input type="reset" value="다시쓰기"></td>
    </tr>
    </table>
</form>
</body>
</html>