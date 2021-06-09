package sample2.service.comment;

import java.sql.Connection;
import java.util.List;

import sample2.bean.Comment;
import sample2.dao.CommentDao;
import sample2.util.DBConnection;

public class CommentService {
	
	private static CommentDao dao;
	
	static {
		dao = new CommentDao();
	}

	public void add(Comment commentBean) {
		Connection con = DBConnection.getConnection();
		
		dao.insert(commentBean, con);
		
		DBConnection.close(con);
	}

	public List<Comment> list(int boardId) {
		Connection con = DBConnection.getConnection();
		
		List<Comment> list = dao.list(boardId, con);
		
		DBConnection.close(con);
		return list;
	}

	public void modify(Comment comment) {
		Connection con = DBConnection.getConnection();
		
		dao.modify(comment, con);
		
		DBConnection.close(con);
	}

	public void remove(int id) {
		Connection con = DBConnection.getConnection();
		
		dao.remove(id, con);
		
		DBConnection.close(con);
	}

	
}











