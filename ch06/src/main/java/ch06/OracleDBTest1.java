package ch06;

import java.sql.*;

public class OracleDBTest1 {

	public static void main(String[] args) {
//		접속이 안 될 수 있어서 try catch를 써줘야 함
		Connection con;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
				con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","newnew","1234");
//				콘솔에 success 뜨면 db에 접속이 잘 된 것.
				System.out.println("Success");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
