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
	msg = "�Ķ���";
	break;
	
case "aquamarine" :
	msg ="�ٴٻ�";
	break; 
case "blueviolet":
	msg = "�����";
	break;
case "lightblue":
	msg ="�ϴû�";
	break;
case "lightgreen":
	msg ="��Ʈ��";
	break;
default :
	color ="yellow";
	msg = "���";
	
} 

/* if (color.equals("blue")) {msg ="�Ķ���";}
else if (color.equals("sea")) {msg = "�ٴٻ�";}
else if (color.equals("violet")){ msg ="�����";}
else if (color.equals("lightgreen")){ msg ="�ϴû�";}
else if (color.equals("lightgreen")){ msg="��Ʈ��";}
else { msg = "���";}*/
%>

</head>
<body bgcolor="<%=color%>">
<b><%=name %></b>���� �����ϴ� ������ <%=msg %>�Դϴ�.


</body>
</html>