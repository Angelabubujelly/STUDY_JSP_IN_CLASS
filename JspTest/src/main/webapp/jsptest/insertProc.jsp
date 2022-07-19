<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DBPKG.DBConnection, java.sql.*" %>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String msg = "수강신청을 실패했습니다.";
	
	try{
		con = DBConnection.getConnection();
		String sql = "insert into TBL_CLASS_202201 values(?, ?, ?, ?, ?)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("REGIST_MONTH"));
		pstmt.setString(2, request.getParameter("C_NO"));
		pstmt.setString(3, request.getParameter("CLASS_AREA"));
		pstmt.setInt(4, Integer.parseInt(request.getParameter("TUITION")));
		pstmt.setString(5, request.getParameter("TEACHER_CODE"));
		if(pstmt.executeUpdate() == 1){
			msg = "수강신청이 정상적으로 완료되었습니다!";
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
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	alert("<%=msg%>");
	location.href = "index.jsp";
</script>
<body>

</body>
</html>