<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isErrorPage ="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Error Page</h1>
<p>�迭�� ������ �Ѵ� ���� ����Ϸ� �ϼ̾��,,.</p>
<p> ������ ���� ���ܰ� �߻��Ͽ����ϴ�.</p>

����Ÿ�� : <%=exception.getClass().getName() %>
���ܸ޽��� : <%=exception.getMessage()%>


</body>
</html>