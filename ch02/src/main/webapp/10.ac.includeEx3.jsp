<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<!-- include를 통해 넘겨줄 시 파라미터 정의, 전화번호와 학원명,,
글구 전화번호랑 학원명 출력하슈 -->
<body>
<%
String adress = request.getParameter("adress");
String course = request.getParameter("course");
%>
<p>include Action의 탑입니다요</p>
<%=adress %>
<%=course %>
</body>
</html>