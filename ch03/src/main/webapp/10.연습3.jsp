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
    String sessionId = session.getId();
	String id = (String)session.getAttribute("idKey");
    int intervalTime =session.getMaxInactiveInterval();
    
if (id != null){
String[] place = request.getParameterValues("place");
out.print("����� �� �����ſ���<br><b>");
for(int i=0; i<place.length;i++){
	out.print(place[i]+"...��");
}
out.print("</b><br> ��� ���� �������䢽<br><br>");
%>
������ �����ð��� <%=intervalTime %>�� �Դϴ�.<p/>
<%
session.invalidate();
} else {
	out.print("������ �ð��� ����ؼ� ������ �� �����ϴ�.");
}
%>


</body>
</html>