package ch06;

import java.sql.*;
import java.util.Vector;


public class PracOrderMgrVector {
	private DBConnectionMgr pool=null;
		public PracOrderMgrVector() {
			try {
				pool = DBConnectionMgr.getInstance();
			} catch(Exception e) {
				System.out.println("Error : 커넥션 얻어오기 실패");
			}
		}
		public Vector<PracOrderBean> getRegisterList() {
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
		 Vector<PracOrderBean> vlist = new Vector<PracOrderBean>();
		try {
			conn = pool.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from 문주");
		while(rs.next()) {
			PracOrderBean bean = new PracOrderBean();
			bean.set주문번호(rs.getString("주문번호"));
			bean.set주문고객(rs.getString("주문고객"));
			bean.set주문제품(rs.getString("주문제품"));
			bean.set수량(rs.getInt("수량"));
			bean.set주문일자(rs.getString("주문일자"));
			vlist.addElement(bean);
		}
		}catch(Exception e) {
			System.out.println("Exception : "+e);
		} finally {
			pool.freeConnection(conn);
			}
		return vlist;
		}
}
