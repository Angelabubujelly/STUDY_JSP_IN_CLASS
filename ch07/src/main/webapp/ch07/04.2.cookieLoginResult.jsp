<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="regMgr" class="ch07.RegisterMgrVector"/>
    <%
    String id ="";
    String pwd = "";
    if(request.getParameter("id")!= null){
    	id = request.getParameter("id");
    }
    if(request.getParameter("pw")!= null){
    	pwd = request.getParameter("pw");
    }
    if(regMgr.loginRegister(id,pwd)) {
    	Cookie cookie = new Cookie("idKey", id);
    	response.addCookie(cookie);
    
    %>
<script type="text/javascript">
	alert("로그인이 됐습니다.");
	location.href = "04.3.cookieLoginOK.jsp";
</script>
<%
} else {
%>

<script type="text/javascript">
alert("로그인이 되지 않았습니다.");
location.href = "04.cookieLogin.jsp";
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