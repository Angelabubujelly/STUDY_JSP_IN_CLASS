<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" buffer="16kb"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int totalSize = out.getBufferSize();
	int remainSize = out.getRemaining();
	int useSize = totalSize - remainSize;
%>
<%
%>
현재 총 버퍼사이즈 : <%=totalSize %>byte<p/>
현재 버퍼 사용량 : <%=useSize %>byte<p/>
남은 버퍼 사이즈 : <%=remainSize %>byte<p/>

</body>
</html>