<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
	<td>초기 파라미터 이름</td>
		<td>초기 파라미터 값</td>
	</tr>
	<%
	Enumeration e = config.getInitParameterNames();
/* Enumeration의 엘리먼트수만큼 돌아라,,,  */
	while(e.hasMoreElements()) {
		/* enum타입이라 String으로 변환해야 함. */
		String initParamName = (String)e.nextElement();
		%>
		<tr>
		<td><%=initParamName %></td>
		<td><%=config.getInitParameter(initParamName) %></td>
		</tr>
		<%
	}
%>
</table>

</body>
</html>