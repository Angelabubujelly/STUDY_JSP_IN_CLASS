<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%> 
    <%@page  import="java.util.*"%>
    <%@ page info="import ����"
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
<h2>���� �ð�</h2>
<%
Date date = new Date();
%>
<p>���� ��¥�� �ð���?</p>
<%=date.toLocaleString() %>
</body>
</html>