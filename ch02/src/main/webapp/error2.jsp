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
<p>배열의 범위를 넘는 값을 출력하려 하셨어용,,.</p>
<p> 다음과 같은 예외가 발생하였습니다.</p>

예외타입 : <%=exception.getClass().getName() %>
예외메시지 : <%=exception.getMessage()%>


</body>
</html>