package ch08;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class KicMemberDAO {
	// DAO (Data Access Object)
	
public Connection getConnection() {
	// 1. driver
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "kic24", "1234");
		return conn;
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) { // 2. connection
		e.printStackTrace();
	}
	return null;
	
}
	
public KicMember getMember(String id) {
	Connection conn = getConnection();
	PreparedStatement pstmt = null;
	String sql = "select * from kicmember where id = ?";
	// 4. mapping
	try {
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	ResultSet rs = pstmt.executeQuery();
	if (rs.next()) {
		KicMember m = new KicMember();
		// id 있음
		m.setId(rs.getString("id"));
		m.setPass(rs.getString("pass"));
		m.setName(rs.getString("name"));
		m.setGender(rs.getInt("gender"));
		m.setTel(rs.getString("tel"));
		m.setEmail(rs.getString("email"));
		m.setPicture(rs.getString("picture"));
		
		return m;
	} else {
		return null;
	}
} catch (SQLException e) {
	e.printStackTrace();
}
	return null;
}
public int insertMember(KicMember kic) {
	Connection conn = getConnection();
	//3. PreparedStatement
	PreparedStatement pstmt = null;

	String sql = "insert into kicmember values (?, ?, ?, ?, ?, ?, ?)";
	// 4. mapping
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, kic.getId());
		pstmt.setString(2, kic.getPass());
		pstmt.setString(3, kic.getName());
		pstmt.setInt(4, kic.getGender());
		pstmt.setString(5, kic.getTel());
		pstmt.setString(6, kic.getEmail());
		pstmt.setString(7, "");
		// sql실행
		int num = pstmt.executeUpdate();
		return num;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return 0;
	
}
public int updateMember(KicMember kic) {
	Connection conn = getConnection();
	//3. PreparedStatement
	PreparedStatement pstmt = null;

	String sql = "update kicmember set name=?, gender=?, tel=?, email=? where id = ?";
	// 4. mapping
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, kic.getName());
		pstmt.setInt(2, kic.getGender());
		pstmt.setString(3, kic.getTel());
		pstmt.setString(4, kic.getEmail());
		pstmt.setString(5, kic.getId());
		// sql실행
		int num = pstmt.executeUpdate();
		return num;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return 0;
	
}

public int deleteMember(String id) {
	Connection conn = getConnection();
	//3. PreparedStatement
	PreparedStatement pstmt = null;

	String sql = "delete from kicmember where id = ?";
	// 4. mapping
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		// sql실행
		int num = pstmt.executeUpdate();
		return num;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return 0;
	
}

public int chgPassMember(String id, String chgpass) {
	Connection conn = getConnection();
	//3. PreparedStatement
	PreparedStatement pstmt = null;

	String sql = "update kicmember set pass = ? where id = ?";
	// 4. mapping
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, chgpass);
		pstmt.setString(2, id);
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
