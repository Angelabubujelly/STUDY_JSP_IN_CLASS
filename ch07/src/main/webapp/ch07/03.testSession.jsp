<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Enumeration en = session.getAttributeNames();
/*  Elements가 있는지? 가지고 있는 만큼 도세용,, 남은게 있으면 false...*/
	while(en.hasMoreElements()){
		/* String형으로 저장해야하니 강제형변환 하겠습니다.. */
		String name = (String)en.nextElement();
		String value = (String)session.getAttribute(name);
		out.print("session name : " + name + "<p/>");
		out.print("session value : " + value + "<p/>");
	}
%>
</body>
</html>