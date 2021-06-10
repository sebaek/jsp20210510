package sample2.bean;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class BoardDto {
	private int boardId;
	private String title;
	private String body;
	private String memberName;
	private String memberId;
	private int numberOfComment;
	private Timestamp inserted;
	
	public int getNumberOfComment() {
		return numberOfComment;
	}
	public void setNumberOfComment(int numberOfComment) {
		this.numberOfComment = numberOfComment;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public Timestamp getInserted() {
		return inserted;
	}
	public void setInserted(Timestamp inserted) {
		this.inserted = inserted;
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
}
