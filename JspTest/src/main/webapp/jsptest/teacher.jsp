<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.sun.net.httpserver.Authenticator.Result" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="org.apache.jasper.tagplugins.jstl.core.Catch" %>
<%@ page import="DBPKG.DBConnection, java.sql.*" %>
<!DOCTYPE html>
<html>
<%
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		con = DBConnection.getConnection();
		String sql = "select * from TBL_TEACHER_202201 order by TEACHER_CODE";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<section>
		<br><h2>강사조회</h2><br>
			<div class="table">
		<table>
			<thead>
				<tr>
					<th>강사코드</th>
					<th>강사명</th>
					<th>강의명</th>
					<th>수강료</th>
					<th>강사자격취즉일</th>
				</tr>
			</thead>
			<tbody>
				<%
				while(rs.next()){
					String code = rs.getString("TEACHER_CODE");
					String teacherName = rs.getString("TEACHER_NAME");
					String className = rs.getString("CLASS_NAME");
					int price = rs.getInt("CLASS_PRICE");
					String date = rs.getString("TEACHER_REGIST_DATE");
					
					
					%>
					<tr>
						<td><%=code %></td>
						<td><%=teacherName %></td>
						<td><%=className %></td>
						<td>\<%=price %></td>
						<td><%=date.substring(0,4) %>년 <%=date.substring(4,6) %>월 <%=date.substring(6) %>일</td>
					</tr>
					<% 
				}
			} catch(Exception e){
				e.printStackTrace();
			} finally {
				try {
					if(pstmt != null){
						pstmt.close();
					}
					if(con != null){
						con.close();
					}
					if(rs != null){
						rs.close();
					}
				} catch(Exception e){
					e.printStackTrace();
				}
			}
				%>
			</tbody>
		</table>
		</div>
	</section>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>