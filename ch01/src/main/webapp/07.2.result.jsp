<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<% 
request.setCharacterEncoding("EUC-KR");
String mesg= request.getParameter("msg");
int count = Integer.parseInt(request.getParameter("count"));
int con =0;

while(con < count) {
	out.print(mesg+"<br>");
	con++;
	}
%>

</body>
</html>