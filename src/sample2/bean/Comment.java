package sample2.bean;

import java.sql.Timestamp;

public class Comment {

	private int id;
	private String memberId;
	private int boardId;
	private String comment;
	private Timestamp inserted;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Timestamp getInserted() {
		return inserted;
	}
	public void setInserted(Timestamp inserted) {
		this.inserted = inserted;
	}
	
	
}
