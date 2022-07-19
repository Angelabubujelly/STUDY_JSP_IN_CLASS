<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		String sql = "select C_NO, C_NAME from TBL_MEMBER_202201 order by C_NO";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		%>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="script.js"></script>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<section>
		<br><h2>수강신청</h2><br>
		<div class="table">
		<form method="post" name="regFrm" action="insertProc.jsp">
			<table>
				<tr>
					<th>수강월</th>
					<td><input name="REGIST_MONTH" id="gofocus">2022년03월 ex)202203</td>
				</tr>
				<tr>
					<th>회원명</th>
					<td>
						<select onchange="optionCheck(this)">
							<option value="">회원명</option>
							<%
							while(rs.next()){
								String no = rs.getString("C_NO");
								String name = rs.getString("C_NAME");
								%>
							<option value="<%=no%>"><%=name %></option>
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
						</select>
					</td>
				</tr>
				<tr>
					<th>회원번호</th>
					<td ><input id="result" name="C_NO"></td>
				</tr>
				<tr>
					<th>강의장소</th>
					<td>
						<select name="CLASS_AREA">
							<option value="">강의장소</option>
							<option value="서울본원">서울본원</option>
							<option value="성남분원">성남분원</option>
							<option value="대전분원">대전분원</option>
							<option value="부산분원">부산분원</option>
							<option value="부산분원">대구분원</option>							
						</select>
					</td>
				</tr>
				<tr>
					<th>강의명</th>
					<td>
						<select name="TEACHER_CODE">
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
					<td><input name="TUITION">원</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="수강신청" onclick="check()">
						<input type="reset" value="다시쓰기" onclick="resetClick()">
					</td>
				</tr>
			</table>
		</form>
		</div>
	</section>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>