package ch07;

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
//	------------------------------------------------------------
	public boolean loginRegister(String id, String pw) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
//		boolean 타입이라 변수 선언해야함. 나중에 맞으면 true로 바꿔쥼.
		boolean loginCon = false;
		try {
			conn = pool.getConnection();
//			Statement의 실행방식은~
//			1. sql문을 ?가 있는 상태로 컴파일 하고 실행을하기.
//			2. ?의 값을 가져와서 컴파일 함.
//			3. 가져온 값을 넣어서 실행함.
//			...그렇게 반복반복...
//			preparedStatement는 컴파일을 한 번만 해서 효율성이 귯.
//			다만 ? and ? 가들어있는 것에는 Statement가 낫다,,?
//			220621 10시 40분에는 몰겠네!!!
			
//											열이 1개만 들어옴?
			String query = "select count(*) from MYDB where id=? and pw=?";
			pstmt = conn.prepareStatement(query);
//			1번째 ?에 id를 넣어주고,
			pstmt.setString(1, id);
//			2번째 ?에 pw를 넣어준다는 말.
			pstmt.setString(2,pw);
			rs = pstmt.executeQuery();
//			rs.next() 자체가 읽을 값이 존재한다는 뜻이고
			if(rs.next() && rs.getInt(1)> 0 )
				loginCon = true;
		} catch(Exception e) {
			System.out.println("Exception : " + e);
		} finally {
			pool.freeConnection(conn, pstmt, rs);
		}
		return loginCon;
	}
}