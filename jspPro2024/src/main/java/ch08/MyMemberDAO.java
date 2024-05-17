package ch08;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MyMemberDAO {
	public Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "kic24", "1234");
			return conn;
		}  catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) { // 2. connection
			e.printStackTrace();
		}
		return null;
	}
	
	public String getMember(String tel_or_email) {
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		String sql = "select pwd from myproject where tel_or_email = ?";
		// 4. mapping
		try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, tel_or_email);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			// id 있음
			String dpwd = rs.getString("pwd");
			return dpwd;
		} else {
			return null;
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
		return null;
	}
	
	public int insertMember(MyMember mym) {
		Connection conn = getConnection();
		//3. PreparedStatement
		PreparedStatement pstmt = null;

		String sql = "insert into myproject values (?, ?, ?, ?)";
		// 4. mapping
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mym.getId());
			pstmt.setString(2, mym.getTel_or_email());
			pstmt.setString(3, mym.getPwd());
			pstmt.setString(4, mym.getPwdck());
			// sql실행
			int num = pstmt.executeUpdate();
			return num;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			return 0;
		
	}
}
