<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String serverInfo = application.getServerInfo();
	String mimeType = application.getMimeType("07.session1.html");
   	String appPath = application.getContextPath();
   	String realPath = application.getRealPath("/");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Application Ex</h1>
서블릿 컨테이너의 이름과 버전 : <%=serverInfo %><p/>
07.session1.html 파일의 MIME Type : <%=mimeType %><p/>
웹 애플리케이션의 URL경로 : <%=appPath %><p/>
로컬 파일 시스템의 경로명 : <%=realPath %>
</body>
</html>