package ch08;

public class Book {
	private String code;
	private String title;
	private String writer;
	private String publisher;
	private int price;
	private boolean out;
	
	public boolean isOut() {
		return out;
	}
	
	public void setOut(boolean out) {
		this.out = out;
	}
	
	public String getBarCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
