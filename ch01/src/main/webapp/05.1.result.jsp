<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
request.setCharacterEncoding("EUC-KR");
String name = request.getParameter("name1");
String color = request.getParameter("color");
String msg;


switch(color){
case "blue" :
	msg = "파란색";
	break;
	
case "aquamarine" :
	msg ="바다색";
	break; 
case "blueviolet":
	msg = "보라색";
	break;
case "lightblue":
	msg ="하늘색";
	break;
case "lightgreen":
	msg ="민트색";
	break;
default :
	color ="yellow";
	msg = "흠냐";
	
} 

/* if (color.equals("blue")) {msg ="파란색";}
else if (color.equals("sea")) {msg = "바다색";}
else if (color.equals("violet")){ msg ="보라색";}
else if (color.equals("lightgreen")){ msg ="하늘색";}
else if (color.equals("lightgreen")){ msg="민트색";}
else { msg = "흠냐";}*/
%>

</head>
<body bgcolor="<%=color%>">
<b><%=name %></b>님이 좋아하는 색상은 <%=msg %>입니다.


</body>
</html>