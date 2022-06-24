<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%!
	String name = "소";
	int num = 2;
%>
<%
	String name2 = name + "의 여자친구는 김준경입니다.";
%>
<%
String fight = "의 여자친구는 김준경입니다.";
%>
<!-- <!--  --> 호출하려면 %뒤에 = 를 뒤에 변수명이나 메소드를 입력해야 함 --> */
나의 이름은 <%=name %>입니다.<br>
<%=num %>학년 입니다.<br>
하고싶은 말이 있습니다. <%=name2 %>
</body>
</html>