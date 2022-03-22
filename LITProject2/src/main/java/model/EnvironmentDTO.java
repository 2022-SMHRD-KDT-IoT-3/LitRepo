package model;

public class EnvironmentDTO {
	private int env_seq;
	private int env_temp;
	private int env_humid;
	private String env_date;
	private String mem_id;

	public EnvironmentDTO(int env_seq, int env_temp, int env_humid, String env_date, String mem_id) {
		this.env_seq = env_seq;
		this.env_temp = env_temp;
		this.env_humid = env_humid;
		this.env_date = env_date;
		this.mem_id = mem_id;
	}
	
	public int getEnv_seq() {
		return env_seq;
	}
	public void setEnv_seq(int env_seq) {
		this.env_seq = env_seq;
	}
	public int getEnv_temp() {
		return env_temp;
	}
	public void setEnv_temp(int env_temp) {
		this.env_temp = env_temp;
	}
	public int getEnv_humid() {
		return env_humid;
	}
	public void setEnv_humid(int env_humid) {
		this.env_humid = env_humid;
	}
	public String getEnv_date() {
		return env_date;
	}
	public void setEnv_date(String env_date) {
		this.env_date = env_date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	
}
