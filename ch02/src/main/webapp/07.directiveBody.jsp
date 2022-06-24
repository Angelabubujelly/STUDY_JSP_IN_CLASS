<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--  통으로 컴파일 돼서 하나로 나옵니다용...?-->
<h1>Directive include</h1>
<p><%@include file="07.directiveTop.jsp" %><br></p>
<hr>
<p>include 지시자의 Body부분입니다.</p>
<hr>
<p><%@include file="07.directiveBottom.jsp" %><br></p>
</body>
</html>