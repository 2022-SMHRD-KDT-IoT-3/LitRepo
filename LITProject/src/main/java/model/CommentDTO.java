package model;

public class CommentDTO {
	private int cmt_seq;
	private int article_seq;
	private String cmt_content;
	private String cmt_date;
	private String mem_id;
	private int  likes;
	
	
	public CommentDTO(int cmt_seq, int article_seq, String cmt_content, String cmt_date, String mem_id, int likes) {
		this.cmt_seq = cmt_seq;
		this.article_seq = article_seq;
		this.cmt_content = cmt_content;
		this.cmt_date = cmt_date;
		this.mem_id = mem_id;
		this.likes = likes;
	}
	
	public int getCmt_seq() {
		return cmt_seq;
	}
	public void setCmt_seq(int cmt_seq) {
		this.cmt_seq = cmt_seq;
	}
	public int getArticle_seq() {
		return article_seq;
	}
	public void setArticle_seq(int article_seq) {
		this.article_seq = article_seq;
	}
	public String getCmt_content() {
		return cmt_content;
	}
	public void setCmt_content(String cmt_content) {
		this.cmt_content = cmt_content;
	}
	public String getCmt_date() {
		return cmt_date;
	}
	public void setCmt_date(String cmt_date) {
		this.cmt_date = cmt_date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	
	
}
