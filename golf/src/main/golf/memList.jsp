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
			<div class="table">
		<table cellspacing="0">
			<thead>
				<tr>
					<th>강사코드</th>
					<th>강사명</th>
					<th>강의명</th>
					<th>수강료</th>
					<th>강사자격취즉일</th>
				</tr>
				<%
					Connection con = null;
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					try {
						con = DBConnection.getConnection();
						String sql = "select REGIST_MONTH, C.C_NO C_NAME, T.CLASS_NAME, CLASS_AREA, TUITION, C.TEACHER_CODE" +
										" from tbl_teacher_202201 T, TBL_MEMBER_202201 M, TBL_CLASS_202201 C" +
										" where C.C_NO = M.C_NO and T.TEACHER_CODE=C.TECHER_CODE";
						pstmt = con.prepareStatement(sql);
						pstmt.setString(1, request.getParameter("regist_month"));
						pstmt.setString(2, request.getParameter("c_no"));
						pstmt.setString(3, request.getParameter("class_area"));
						pstmt.setString(4, request.getParameter("tuition"));
						pstmt.setString(5, request.getParameter("teacher_code"));
						if(pstmt.executeUpdate() ==1) {

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
				<script>
				alert("<%=msg%>");
				location.href="<%=url%>";
				</script>
			</thead>
			<tbody>
				
			</tbody>
		</table>
		</div>
	</section>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>