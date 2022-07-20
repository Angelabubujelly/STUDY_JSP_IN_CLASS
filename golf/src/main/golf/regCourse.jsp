<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="DBPKG.DBConnection, java.sql.*" %>
<!DOCTYPE html>
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
	<section>
		<br><h2>강사조회</h2><br>
			
			<form method="post" name="frm" action="regCourseProc.jsp">
		<table cellspacing="0">
			<thead>
				<tr>
					<th>수강월</th>
					<td><input name="regist_month">2022년03월 예)202203</td>
				</tr>
					<tr>
					<th>회원명</th>
					<td>
							<select name="c_name" onchange="fun_name()">
								<option value="">회원명</option>
								<option value="10001">홍길동</option>
								<option value="10002">장발장</option>
								<option value="10003">임꺽정</option>
								<option value="20001">성춘향</option>
								<option value="20002">이몽룡</option>
							</select>
						</td>
				</tr>
				<tr>
					<th>회원번호</th>
					<td><input name="c_no" readonly    >예)10001</td>
				</tr>
				<tr>
					<th>강의장소</th>
					<td>
							<select name="class_area">
								<option value="">강의장소</option>
								<option value="서울본원">서울본원</option>
								<option value="성남분원">성남분원</option>
								<option value="대전분원">대전분원</option>
								<option value="부산분원">부산분원</option>
								<option value="대구분원">대구분원</option>
							</select>
						</td>
				</tr>
					<tr>
					<th>강의명</th>
					<td>
							<select name="teacher_code" onChange="fun_teaCode()">
								<option value="">강의명</option>
								<option value="100">초급반</option>
								<option value="200">중급반</option>
								<option value="300">고급반</option>
								<option value="400">심화반</option>
							</select>
						</td>
				</tr>
				<tr>
					<th>수강료</th>
					<td>
							<input name="tuition" readonly>원
					</td>
				</tr>
				<tr>
					<td colspan="2">
							<input type="button" value="수강신청" onClick="check()">&emsp;
								<input type="button" value="다시쓰기" onClick="fun_reset()">
					</td>
				</tr>
				<%
					Connection con = null;
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					try {
						con = DBConnection.getConnection();
						String sql = "select * from tbl_teacher_202201";
						pstmt = con.prepareStatement(sql);
						rs = pstmt.executeQuery();
						while(rs.next()) {
							/* escape 문자라 \\붙여줘야대용 */
							String price = "\\" + rs.getString(4);
							String date = rs.getString(5).substring(0,4) + "년" + rs.getString(5).substring(4,6)+ "월" + rs.getString(5).substring(6,8) + "일";	
						/* 	String date = rs.getString(5).substring(0,4) + "년";
							date +=  rs.getString(5).substring(4,6)+ "월" ;
							date += rs.getString(5).substring(6,8) + "일"; */
							%>
							<tr>
								<td><%=rs.getString(1) %></td>
								<td><%=rs.getString(2) %></td>
								<td><%=rs.getString(3) %></td>
								<td><%=price %></td>
								<td><%=date %></td>
							</tr>
							<%
						}
					} catch(Exception e) {
			/* 			System.out.println(e); */
						e.printStackTrace();
					} finally {
						try {
							if(pstmt != null)
								pstmt.close();
						 if(con != null)
							con.close();
					if(rs != null)
						rs.close();
					} catch(Exception e) {
						e.printStackTrace();
					}
					}
				%>
				
			</thead>
			<tbody>
				
			</tbody>
		</table>

		</form>
	</section>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>