<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="regMgr" class="ch07.RegisterMgrVector"/>
    <%
    String id =request.getParameter("id");
    String pwd =request.getParameter("pw");
    if(regMgr.loginRegister(id,pwd)) {
    	session.setAttribute("idKey", id);
    %>
<script type="text/javascript">
	alert("로그인이 됐습니다.");
	location.href = "05.3.sessionLoginOK.jsp";
</script>
<%
} else {
%>

<script type="text/javascript">
alert("로그인이 되지 않았습니다.");
location.href = "05.sessionLogin.jsp";
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

</body>
</html>