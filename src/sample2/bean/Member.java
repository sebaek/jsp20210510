package sample2.bean;

import java.sql.Date;
import java.sql.Timestamp;

public class Member {
	private String id;
	private String password;
	private String name;
	private Date birth;
	private int numberOfBoard;
	private int numberOfComment;
	private Timestamp inserted;
	
	
	
	public int getNumberOfBoard() {
		return numberOfBoard;
	}
	public void setNumberOfBoard(int numberOfBoard) {
		this.numberOfBoard = numberOfBoard;
	}
	public int getNumberOfComment() {
		return numberOfComment;
	}
	public void setNumberOfComment(int numberOfComment) {
		this.numberOfComment = numberOfComment;
	}
	public Timestamp getInserted() {
		return inserted;
	}
	public void setInserted(Timestamp inserted) {
		this.inserted = inserted;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	
	
}
