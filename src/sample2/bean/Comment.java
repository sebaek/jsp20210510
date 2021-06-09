package sample2.bean;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class Comment {

	private int id;
	private String memberId;
	private int boardId;
	private String comment;
	private Timestamp inserted;
	private String memberName;
	
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	
	public String getTimeAgo() {
		long now = System.currentTimeMillis();
		long inserted = this.inserted.getTime();
		
		long diff = now - inserted;
		
		diff /= 1000;
		
		if (diff < 60 * 60) {
			return (diff / 60) + "분 전";
		} else if (diff < 60 * 60 * 24) {
			return (diff / (60 * 60)) + "시간 전";
		} else {
			return new SimpleDateFormat("yy/MM/dd").format(this.inserted);
		}
	}
	
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
