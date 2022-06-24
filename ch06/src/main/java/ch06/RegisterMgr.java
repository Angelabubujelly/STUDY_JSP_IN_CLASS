package ch06;

import java.sql.*;
import java.util.ArrayList;

public class RegisterMgr {
//JSP에서 Beans를 호출하기 위해서 main을 안 쓴다고??
	
//	변수가 아닌 상수로 하기 위해 final
	private final String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
	private final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private final String USER = "newnew";
	private final String PASS = "1234";
	
//	 생성자 만들겠읍니다.
	public RegisterMgr() {
		try {
		Class.forName(JDBC_DRIVER);
	} catch(ClassNotFoundException e) {
		e.printStackTrace();
	}
}
//					<어떤 자료형이든 와도 됨...>
//	 반환형이 있기 때문에 list를 리턴해줘야 함.
	public ArrayList<RegisterBeans> getRegisterList() {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
//		ArrayList사용을 위한 객체 생성
		ArrayList<RegisterBeans> vlist = new ArrayList<RegisterBeans>();
	try {
		conn = DriverManager.getConnection(JDBC_URL,USER,PASS);
		stmt = conn.createStatement();		
//		String strQuery = "select * 고객 ";
//		↓대신 변수명 지정해줘서 ↑처럼 쓰기도 합니당..
		rs = stmt.executeQuery("select * from 고객 ");
		
		while(rs.next()) {
			RegisterBeans bean = new RegisterBeans();
			bean.set고객아이디(rs.getString("고객아이디"));
			bean.set고객이름(rs.getString("고객이름"));
			bean.set나이(rs.getInt("나이"));
			bean.set등급(rs.getString("등급"));
			bean.set직업(rs.getString("직업"));
			bean.set적립금(rs.getInt("적립금"));
			
//			지금 만들어진 bean을 arrayList에다 객체로 입력
			vlist.add(bean);
		}
	} catch(Exception e) {
		System.out.println("Exception : " + e);
	} finally {
		if(rs != null)
			try {rs.close();} catch(SQLException e) {}
		if(stmt != null)
			try {stmt.close();} catch(SQLException e) {}
		if(conn != null)
			try {conn.close();} catch(SQLException e) {}
	}
	return vlist;
	}
}
