<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "DBPKG.DBConnection, java.sql.*" %>
    <%
    Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		con = DBConnection.getConnection();
		String sql = "insert into TBL_CLASS_202201 values(?,?,?,?,?)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("regist_month"));
		pstmt.setString(2, request.getParameter("c_no"));
		pstmt.setString(3, request.getParameter("class_area"));
		pstmt.setString(4, request.getParameter("tuition"));
		pstmt.setString(5, request.getParameter("teacher_code"));
	} catch(Exception e) {
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>