<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
 <%
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection conn = null;
	 Statement stmt = null;
	 ResultSet rs = null;
	 /* <% 5> 선언된 지역변수는 초기화를 꼭 해줘야함*/
	 String id="", name="", adress="";
	 int age=0, count=0;
	 
	 try {
		 conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","newnew","1234");
		 stmt = conn.createStatement();
		 rs = stmt.executeQuery("select * from member");
		 %>
		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>JSP를 이용한 ORACLE Db연동</h2>
	<table border="1">
	<tr>
		<th>ID</th>
		<th>NAME</th>
		<th>AGE</th>
		<th>ADRESS</th>
	</tr>
	<%
		if(rs != null){
			while(rs.next()){
/*대소문자 관계 없이 컬럼명과 동일한 이름으로 */
				id = rs.getString("ID");
				name = rs.getString("NAME");
				age = rs.getInt("AGE");
				adress = rs.getString("ADDRESS");	
%>
	<tr>
		<td><%=id %></td>
		<td><%=name %></td>
		<td><%=age %></td>
		<td><%=adress %></td>
	</tr>
<%
count++;
			}
		}
	%>
	</table>
	total records : <%=count %>
	 <%
	 /*Exception e는 모든 예외를   */
	 } catch(SQLException e){
		 System.out.println("SQLException : " + e);
	 } catch(Exception e){
		 System.out.println("Exception : " + e);
	 }finally {
		 if(rs != null)
			 try {rs.close();} catch(SQLException e) {}
		 if(stmt != null)
			 try {	stmt.close();} catch(SQLException e) {}
		 if(conn != null)
			 try {	conn.close();} catch(SQLException e) {}
	 }
 %>
</body>
</html>