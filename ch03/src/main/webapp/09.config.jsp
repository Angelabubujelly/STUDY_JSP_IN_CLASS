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
	<td>�ʱ� �Ķ���� �̸�</td>
		<td>�ʱ� �Ķ���� ��</td>
	</tr>
	<%
	Enumeration e = config.getInitParameterNames();
/* Enumeration�� ������Ʈ����ŭ ���ƶ�,,,  */
	while(e.hasMoreElements()) {
		/* enumŸ���̶� String���� ��ȯ�ؾ� ��. */
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