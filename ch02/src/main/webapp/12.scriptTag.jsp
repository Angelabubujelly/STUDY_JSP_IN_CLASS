<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Script Tag Ex1</h1>
<%--					
		선언문
<%! public int max(int x, int y) {
		return x > y ? x : y;
	}%>

--%>
	

<jsp:declaration>
	public int max(int x, int y) {
		return x > y ? x : y;
	}
</jsp:declaration>
<%-- 
	스크립트릿
<%  int i = 10;
	int j = 20;
	if(i> 100) {
	out.print("100보다 큰 값");
	}%> 

--%>
<jsp:scriptlet>
	int i = 10;
	int j = 20;
	if(i> 100) {
	out.print("100보다 큰 값");
	}
</jsp:scriptlet>

<%-- <%= %> --%>

i = <jsp:expression>i</jsp:expression>와
j = <jsp:expression>j</jsp:expression>중 큰 수는?<p/>
<jsp:expression>max(i,j)</jsp:expression>
</body>
</html>