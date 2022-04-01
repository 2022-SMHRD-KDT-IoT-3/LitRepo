package model;

public class BoardDTO {
	private int article_seq;
	private String article_title;
	private String article_content;
	private String article_file;
	private String article_date;
	private String mem_id;
	private int article_cnt;
	private String article_type;
	
	public BoardDTO(int article_seq, String article_title, String article_content, String article_file,
			String article_date, String mem_id, int article_cnt, String article_type) {
		this.article_seq = article_seq;
		this.article_title = article_title;
		this.article_content = article_content;
		this.article_file = article_file;
		this.article_date = article_date;
		this.mem_id = mem_id;
		this.article_cnt = article_cnt;
		this.article_type = article_type;
	}
	
	public BoardDTO(String article_title, String article_content, String article_file, String mem_id,
			String article_type) {
		super();
		this.article_title = article_title;
		this.article_content = article_content;
		this.article_file = article_file;
		this.mem_id = mem_id;
		this.article_type = article_type;
	}

	public BoardDTO(int article_seq, String article_title, String article_content, String article_file, String mem_id, String article_type) {
		this.article_seq = article_seq;
		this.article_title = article_title;
		this.article_content = article_content;
		this.article_file = article_file;
		this.mem_id = mem_id;
		this.article_type = article_type;
	}
	
	public BoardDTO(String article_type) {
		this.article_type = article_type;
	}

	public int getArticle_seq() {
		return article_seq;
	}
	public void setArticle_seq(int article_seq) {
		this.article_seq = article_seq;
	}
	public String getArticle_title() {
		return article_title;
	}
	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}
	public String getArticle_content() {
		return article_content;
	}
	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}
	public String getArticle_file() {
		return article_file;
	}
	public void setArticle_file(String article_file) {
		this.article_file = article_file;
	}
	public String getArticle_date() {
		return article_date;
	}
	public void setArticle_date(String article_date) {
		this.article_date = article_date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getArticle_cnt() {
		return article_cnt;
	}
	public void setArticle_cnt(int article_cnt) {
		this.article_cnt = article_cnt;
	}
	public String getArticle_type() {
		return article_type;
	}
	public void setArticle_type(String article_type) {
		this.article_type = article_type;
	}
	
	
}
