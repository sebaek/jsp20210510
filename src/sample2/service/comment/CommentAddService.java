package sample2.service.comment;

import java.sql.Connection;

import sample2.bean.Comment;
import sample2.dao.CommentDao;
import sample2.util.DBConnection;

public class CommentAddService {
	
	private static CommentDao dao;
	
	static {
		dao = new CommentDao();
	}

	public void add(Comment commentBean) {
		Connection con = DBConnection.getConnection();
		
		dao.insert(commentBean, con);
		
	}

	
}




