package ch06;

import java.sql.*;

public class OracleDBTest2 {

	public static void main(String[] args) {
//		접속이 안 될 수 있어서 try catch를 써줘야 함
		Connection con;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
				con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","newnew","1234");
//				콘솔에 success 뜨면 db에 접속이 잘 된 것.
				System.out.println("Success");
				
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from tab");
//				execute는 내가 준 쿼리문이 완료가 되었냐를 말해주는 것..
				if(st.execute("select * from tab")) {
//					getResultSet()= 현재 결과를 검색하여 SQLServerResultSet 개체로 반환합니다.
					rs = st.getResultSet();
				}
//				next()메소드는 공백(space) 전 까지의 입력받은 문자열을 모두 반환
				while(rs.next()) {
//					getString(n) = 이 SQLServerResultSet 개체의 현재 행에서 지정된 열 이름의 값을 검색하여 Java 프로그래밍 언어의 문자열 로 반환합니다.
					String str = rs.getString(1);
					System.out.println(str);
				}
			} catch (ClassNotFoundException e) {
//				e.printStackTrace() = 에러 메세지의 발생 근원지를 찾아서 단계별로 에러를 출력한다.
				e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
//
