package model;

public class MemberDTO {
	private String mem_id;
	private String mem_pw;
	private String mem_nick;
	private String mem_gender;
	private String mem_birthday;
	private String mem_joindate;
	private String mem_type;
	
	
	public MemberDTO(String mem_id, String mem_pw, String mem_nick, String mem_gender, String mem_birthday,
			String mem_joindate, String mem_type) {
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_nick = mem_nick;
		this.mem_gender = mem_gender;
		this.mem_birthday = mem_birthday;
		this.mem_joindate = mem_joindate;
		this.mem_type = mem_type;
	}
	
	public MemberDTO(String mem_id, String mem_pw, String mem_nick) {
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_nick = mem_nick;
	}

	@Override
	public String toString() {
		return "MemberDTO [mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_nick=" + mem_nick + "]";
	}
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_nick() {
		return mem_nick;
	}
	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}
	public String getMem_gender() {
		return mem_gender;
	}
	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}
	public String getMem_birthday() {
		return mem_birthday;
	}
	public void setMem_birthday(String mem_birthday) {
		this.mem_birthday = mem_birthday;
	}
	public String getMem_joindate() {
		return mem_joindate;
	}
	public void setMem_joindate(String mem_joindate) {
		this.mem_joindate = mem_joindate;
	}
	public String getMem_type() {
		return mem_type;
	}
	public void setMem_type(String mem_type) {
		this.mem_type = mem_type;
	}
	
	
}
