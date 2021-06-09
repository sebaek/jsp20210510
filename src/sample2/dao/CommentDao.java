package sample2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import sample2.bean.Comment;

public class CommentDao {

	public void insert(Comment commentBean, Connection con) {
		String sql = "INSERT INTO Comment (memberId, boardId, comment) "
				+ "   VALUES (?, ?, ?)";
		
		try (
			PreparedStatement pstmt = con.prepareStatement(sql);
				) {
			
			pstmt.setString(1, commentBean.getMemberId());
			pstmt.setInt(2, commentBean.getBoardId());
			pstmt.setString(3, commentBean.getComment());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
