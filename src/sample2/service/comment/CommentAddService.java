package sample2.service.comment;

import sample2.bean.Comment;

public class CommentAddService {

	public void add(Comment commentBean) {
		
		dao.insert(commentBean, con);
		
	}

	
}
