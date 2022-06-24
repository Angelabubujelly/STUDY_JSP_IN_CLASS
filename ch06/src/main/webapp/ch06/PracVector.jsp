<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*, ch06.*" %>
<jsp:useBean id="regMgr" class="ch06.PracOrderMgrVector"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Bean을 이용한 ORACLE DB연동</h2>
<table border="1">
<tr>
<th>주문번호</th>
<th>주문고객</th>
<th>주문제품</th>
<th>수량</th>
<th>주문일자</th>
</tr>
<%
Vector<PracOrderBean> vlist = regMgr.getRegisterList();
for(int i=0; i<vlist.size(); i++){
	PracOrderBean regBean = vlist.get(i);
%>
<tr>
			<td><%=regBean.get주문번호() %></td>
			<td><%=regBean.get주문고객() %></td>
			<td><%=regBean.get주문제품() %></td>
			<td><%=regBean.get수량() %></td>
			<td><%=regBean.get주문일자() %></td>
</tr>
<%
}
%>
</table>
</body>
</html>