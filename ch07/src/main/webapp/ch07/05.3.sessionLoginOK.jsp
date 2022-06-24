<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("idKey");
	if(id==null){
			%>
			<script type="text/javascript">
			alert("로그인이 되지 않았습니다.")
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
	<h2>Cookie Login Page</h2>
	<h2><%=id %>님이 로그인했습니다.</h2>
	<h2><a href="05.4.sessionLogout.jsp">로그아웃</a></h2>
</body>
</html>