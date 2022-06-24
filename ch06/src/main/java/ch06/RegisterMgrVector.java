package ch06;

import java.sql.*;
import java.util.Vector;

public class RegisterMgrVector {
//driver는 필요없고 connectionPool만하믄 된다네요
	private DBConnectionMgr pool =null;
	public RegisterMgrVector() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			System.out.println("Error : 커넥션 얻어오기 실패");
		}
	}
	public Vector<RegisterBeans> getRegisterList() {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Vector<RegisterBeans> vlist = new Vector<RegisterBeans>();
		try {
			conn = pool.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from 고객");
		while(rs.next()) {
			RegisterBeans bean = new RegisterBeans();
			bean.set고객아이디(rs.getString("고객아이디"));
			bean.set고객이름(rs.getString("고객이름"));
			bean.set나이(rs.getInt("나이"));
			bean.set등급(rs.getString("등급"));
			bean.set직업(rs.getString("직업"));
			bean.set적립금(rs.getInt("적립금"));
			vlist.addElement(bean);
		}
	} catch(Exception e) {
		System.out.println("Exception : " + e);
	} finally {
		pool.freeConnection(conn);
	}
		return vlist;
}
}