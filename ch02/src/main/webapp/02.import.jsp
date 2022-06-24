<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%> 
    <%@page  import="java.util.*"%>
    <%@ page info="import 연습"
    			buffer="16kb" 
    			autoFlush="true"
    			%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>현재 시간</h2>
<%
Date date = new Date();
%>
<p>현재 날짜와 시간은?</p>
<%=date.toLocaleString() %>
</body>
</html>