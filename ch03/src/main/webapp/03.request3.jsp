<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Request 정보 출력</h1>
<%
/* 포트번호(int)제외 모든 값이 스트링으로 들어오니까 저장을 위해선 스트링 변수에 저장해야 함!  */
String protocol = request.getProtocol();
%>
프로토콜 : <%=protocol %><p/>
<!-- 바로 출력하려면 이렇게 고고 -->
<%="프로토콜 : " + request.getProtocol() + "<p/>" %>
<%="서버의 이름 : "+ request.getServerName() + "<p/>" %>
<%="서버의 포트번호 : " +  request.getServerPort()+"<p/>"%>
<%="사용자의 컴퓨터 주소 : " + request.getRemoteAddr() + "<p/>" %>
<%="사용자의 컴퓨터 이름 : " +request.getRemoteHost() +"<p/>" %>
<%="method 값 : " + request.getMethod() + "<p/>" %>
<%="요청 경로(URL) : "+ request.getRequestURL() + "<p/>" %>
<%="요청 경로(URI) : "+ request.getRequestURI() + "<p/>" %>
<%="현재 사용하는 브라우저 : "+ request.getHeader("User-agent") + "<p/>" %>
<%="브라우저가 사용하는 파일의 type : " + request.getHeader("Accept") + "<p/>]" %>
</body>
</html>