<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>for ���</h1>
<h3>1~100������ ��</h3>
<%
int sum=0;
for(int i=1; i<=100; i++){
	sum+= i;
}
%>
<%=sum %>
<h3>1~10���� ���</h3>
<%
for (int i=1; i<=10; i++){

%>
	<%-- <%=i %>&ensp; --%>
	<%-- 	<%=i %>,&ensp; --%>
	
	<%=i + "," %>

<%
}
%>

<%-- <h3>1~10���� �հ�</h3>
<%
int sum1=0;
for(int i=1; i<10; i++){
	if(i<10){
%>
	<%=i + " + " %>
<%
	} else {
%>
	<% i + "="%>
<% 
}
sum1+=i;
}
%>

<%=sum1 %>
 --%>
<h3>1~10������ �հ�</h3>
<%
	int sum2=0;
for(int i=1; i<=10; i++){
	if(i<10)
	out.print(i +"+ ");
	else
	out.print(i + "= ");
	sum2+=i;
}
%>
<%=sum2 %>
</body>
</html>