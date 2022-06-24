package ch06;

import java.sql.*;
import java.util.ArrayList;

public class PracOrderMgr {

		private final String JDBC_DRIVER="oracle.jdbc.driver.OracleDriver";
		private final String JDBC_URL ="jdbc:oracle:thin:@localhost:1521:xe";
		private final String USER = "newnew";
		private final String PASS = "1234";
		
		public PracOrderMgr() {
			try {
				Class.forName(JDBC_DRIVER);
			} catch(ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
		public ArrayList<PracOrderBean> getRegisterList() {
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
		
		 ArrayList<PracOrderBean> vlist = new ArrayList<PracOrderBean>();
		try {
			conn = DriverManager.getConnection(JDBC_URL,USER,PASS);
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from 문주");
			
		while(rs.next()) {
			PracOrderBean bean = new PracOrderBean();
			bean.set주문번호(rs.getString("주문번호"));
			bean.set주문고객(rs.getString("주문고객"));
			bean.set주문제품(rs.getString("주문제품"));
			bean.set수량(rs.getInt("수량"));
			bean.set주문일자(rs.getString("주문일자"));
			
			vlist.add(bean);
		}
		}catch(Exception e) {
			System.out.println("Exception : "+e);
		} finally {
			if(rs !=null)
				try {rs.close();} catch(SQLException e) {}
			if(stmt != null)
				try {stmt.close();} catch(SQLException e) {}
			if(conn != null)
			try {conn.close();}catch(SQLException e) {}
			}
		return vlist;
		}
}
