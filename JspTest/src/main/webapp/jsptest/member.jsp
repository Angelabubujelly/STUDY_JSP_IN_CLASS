<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DBPKG.DBConnection, java.sql.*" %>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	PreparedStatement pstmt2 = null;
	ResultSet rs2 = null;
	
	try{
		con = DBConnection.getConnection();
		String sql = "select * from TBL_CLASS_202201 order by C_NO";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<section >
		<br><h2>회원정보조회</h2><br>
			<div class="table">
		<table>
				<tr>
					<th>수강월</th>
					<th>회원번호</th>
					<th>회원명</th>
					<th>강의명</th>
					<th>강의장소</th>
					<th>수강료</th>
					<th>등급</th>
				</tr>
				<%
				while(rs.next()){
					String month = rs.getString("REGIST_MONTH");
					String no = rs.getString("C_NO");
					String area = rs.getString("CLASS_AREA");
					int price = rs.getInt("TUITION");
					String teacher = rs.getString("TEACHER_CODE");
					
					String name = "";
					String grade = "";
					String className = "";
					
					String sql2 = "select C_NAME, GRADE from TBL_MEMBER_202201 where C_NO = ?";
					pstmt2 = con.prepareStatement(sql2);
					pstmt2.setString(1, no);
					rs2 = pstmt2.executeQuery();
					if(rs2.next()){
						name = rs2.getString("C_NAME");
						grade = rs2.getString("grade");
					}
 					sql2 = "select CLASS_NAME from TBL_TEACHER_202201 where TEACHER_CODE = ?";
					pstmt2 = con.prepareStatement(sql2);
					pstmt2.setString(1, teacher);
					rs2 = pstmt2.executeQuery();
					if(rs2.next()){
						className = rs2.getString("CLASS_NAME");
					}
					%>
					<tr>
						<td><%=month.substring(0,4) %>년 <%=month.substring(4) %>월</td>
						<td><%=no %></td>
						<td><%=name %></td>
						<td><%=className %></td>
						<td><%=area %></td>
						<td>￦<%=price %></td>
						<td><%=grade %></td>
					</tr>
					<%
				}
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if(pstmt != null){
						pstmt.close();
					}
					if(con != null){
						con.close();
					}
				} catch (Exception e){
					e.printStackTrace();
				}
			}
			
		%>
		</table>
		</div>
	</section>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>