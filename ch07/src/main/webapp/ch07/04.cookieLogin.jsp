<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id ="";
    Cookie[] cookies = request.getCookies();
    if(cookies != null) {
    	for(int i=0; i<cookies.length; i++) {
    		if(cookies[i].getName().equals("idKey")){
    			String cookieName =cookies[i].getName();
    			id = cookies[i].getValue();
    		}
    	}
    	if (!id.equals("")) {
   %>
   <script>
   alert("로그인이 됐습니다.");
   location.href="04.3.cookieLoginOK.jsp";
   </script>
   <%
    	}
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2 align="center">Cookie 로그인</h2>
<!--  반드시 form안에 넣어줘, 보안을 위해 post써줘-->
	<form action="04.2.cookieLoginResult.jsp" method="post">
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
		<input type="submit" value="login">
		<input type="reset" value="reset">
		</td>
	</tr>
	</table>
	</form>
</body>
</html>