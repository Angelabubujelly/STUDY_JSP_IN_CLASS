<%@ page language="java" contentType="text/html; charset=EUC-KR"pageEncoding="EUC-KR"%> 
<%@page  import="java.util.*"%>
<%@ page info="import 연습"%>
<%@ page buffer="16kb" %>
<%@ page autoFlush="true" %>
<%@ page isThreadSafe ="true" %>
 

   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>page지시자2</title>
</head>
<body>
<h2>page 지시자 : import</h2>
<%
Date date = new Date();
%>
<p>현재 날짜와 시간은?</p>
<%=date.toLocaleString() %>
</body>
</html>