<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 String id = (String)session.getAttribute("idKey");
 if(id != null) {
 %>
 <script>
 alert("로그인 되었습니다.");
 location.href = "05.3.sessionLoginOK.jsp";
</script>
<%
 }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="05.script5.js" charset="UTF-8"></script>
</head>
<body>
<h2 align="center">Session 로그인</h2>
<!--  반드시 form안에 넣어줘, 보안을 위해 post써줘-->
	<form action="05.2.sessionLoginResult.jsp" method="post" name="regForm">
	<table border="1" align="center" width="200">
	<tr>
		<th colspan="2">login</th>
	</tr>
	<tr>
	<td width="40%"  align="center" >ID</td>
		<td width="60%"><input name ="id"></td>
	</tr>
		<tr>
	<td>PW</td>
		<td align="center" ><input name ="pw" type="password"></td>
	</tr>
		<tr>
	<td colspan="2" align="center">
		<input type="button" value="login" onclick="inputCheck()">
		<input type="reset" value="reset">
		</td>
	</tr>
	</table>
	</form>
</body>
</html>