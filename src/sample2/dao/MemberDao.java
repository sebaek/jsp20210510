package sample2.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import sample2.bean.Member;

public class MemberDao {
	private String url;
	private String user;
	private String password;
	
	public MemberDao() {
		this.url = "jdbc:mysql://13.125.118.27/test2";
		this.user = "root";
		this.password = "wnddkdwjdqhcjfl1";
	}

	public boolean insert(Member member) {
		String sql = "INSERT INTO Member "
				+ "(id, password, name, birth, inserted) "
				+ "VALUES "
				+ "(?, ?, ?, ?, NOW()) ";
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			pstmt.setDate(4, member.getBirth());
			
			int cnt = pstmt.executeUpdate();
			
			if (cnt == 1) {
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return false;
	}
	
}
