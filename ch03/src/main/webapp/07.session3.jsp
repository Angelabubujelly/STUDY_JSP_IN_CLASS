<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%request.setCharacterEncoding("EUC-KR"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String season = request.getParameter("season");
String fruit = request.getParameter("fruit");
String id = (String)session.getAttribute("idKey");
String sessionId = session.getId();
int intervalTime = session.getMaxInactiveInterval();
%>
<%
	if(id != null){
%>
<h1>Session Ex</h1>
<%=id %>���� <%=season %>�� <%=fruit %>�� ����Ͻʴϴ�.<p/>
���� ID : <%=sessionId %><p/>
���� �����ð� : <%=intervalTime %>��<p/>
<%
	session.invalidate();
} else {
	out.print("������ �ð��� ����Ͽ��ų� �ٸ� ������ ������ �� �����ϴ�.");
}
%>
</body>
</html>