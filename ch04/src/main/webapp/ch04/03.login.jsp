<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
/*  값이 있으면 로그인이 되어있는 상태예용
	null과 같으면 이 사람은 처음 들어온 분 입니당*/
	String id = (String)session.getAttribute("idKey");
	if(id != null) {
		out.print(id + "님 반갑습니다아아♡♥<p/>");
		out.print("<a href='03.logout.jsp'>로그아웃</a>");
	}	else {
%>
<form method="post" action="LoginServlet">
		id : <input name="id"><p/>
		pw : <input type="password" name="pwd"><p/>
		<!--  submit은 서블릿을 실행하라는 form.이쥬-->
		<input type="submit" value="로그인">
<%
	}
%>
</form>
</body>
</html>