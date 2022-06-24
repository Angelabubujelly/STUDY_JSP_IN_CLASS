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
out.print("당신은 곧 떠날거예용<br><b>");
for(int i=0; i<place.length;i++){
	out.print(place[i]+"...♨");
}
out.print("</b><br> 어머 정말 멋지군요♡<br><br>");
%>
세션의 유지시간은 <%=intervalTime %>초 입니다.<p/>
<%
session.invalidate();
} else {
	out.print("세션의 시간이 경과해서 연결할 수 없습니다.");
}
%>


</body>
</html>