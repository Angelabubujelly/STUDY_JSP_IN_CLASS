<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String id="", name="", grade="", job="";
int age=0, point=0, count=0;

try{
	conn= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","newnew","1234");
	stmt = conn.createStatement();
	rs = stmt.executeQuery("select * from 고객");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>JSP를 이용한 Oracle Db연동</h2>
<table border="1">
<tr>
<th>ID</th>
<th>NAME</th>
<th>AGE</th>
<th>GRADE</th>
<th>JOB</th>
<th>POINT</th>
</tr>
<%
if(rs != null){
	while(rs.next()){
		id= rs.getString("고객아이디");
		name= rs.getString("고객이름");
		age=rs.getInt("나이");
		grade=rs.getString("등급");
		job=rs.getString("직업");
		point=rs.getInt("적립금");
%>
<tr>
<td><%=id %></td>
<td><%=name %></td>
<td><%=age %></td>
<td><%=grade %></td>
<td><%=job %></td>
<td><%=point %></td>
</tr>
<%
count++;
	}
}
%>
</table>
total records : <%=count %>
<%
} catch(SQLException e){
	System.out.println("SQLException : "+ e);
} catch(Exception e){
	System.out.println("Exception : " + e);
} finally {
	if(rs != null)
		try {rs.close();} catch(SQLException e){}
	if(stmt != null)
		try {stmt.close();} catch(SQLException e) {}
	if(conn != null)
		try {conn.close();} catch(SQLException e) {}
}
%>
</body>
</html>