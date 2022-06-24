<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String name =(String)session.getAttribute("idKey");
    if(name != null){
    %>
    <script>
    alert("로그인 되었습니다.");
    location.href = "06.3.sessionLoginOK.jsp";
    </script>
    <%
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">Session 로그인</h2>
<form action="06.2.sessionLoginResult.jsp" method="post" name=regForm>
<table border="1" align ="center" width="200">
<tr>
<th colspan="2">login</th>
</tr>
<tr>
<td width="60%"   >이름</td>
</tr>
<tr>
<td width="40%"  ><input name="name"></td>
</tr>
<tr  align ="center" >
 <td colspan="2" >
<input type="button" value="login" onclick="inputCheck()">
<input type="reset" value="reset">
</td>
</tr>
</table>

</form>
</body>
</html>