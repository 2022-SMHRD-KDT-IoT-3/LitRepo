package model;

public class PhysiclaDTO {
	private int sensing_seq;
	private String mem_id;
	private int sensing_pulse;
	private int sensing_stress;
	private String sensing_date;

	
	public PhysiclaDTO(int sensing_seq, String mem_id, int sensing_pulse, int sensing_stress, String sensing_date) {
		this.sensing_seq = sensing_seq;
		this.mem_id = mem_id;
		this.sensing_pulse = sensing_pulse;
		this.sensing_stress = sensing_stress;
		this.sensing_date = sensing_date;
	}
	
	public int getSensing_seq() {
		return sensing_seq;
	}
	public void setSensing_seq(int sensing_seq) {
		this.sensing_seq = sensing_seq;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getSensing_pulse() {
		return sensing_pulse;
	}
	public void setSensing_pulse(int sensing_pulse) {
		this.sensing_pulse = sensing_pulse;
	}
	public int getSensing_stress() {
		return sensing_stress;
	}
	public void setSensing_stress(int sensing_stress) {
		this.sensing_stress = sensing_stress;
	}
	public String getSensing_date() {
		return sensing_date;
	}
	public void setSensing_date(String sensing_date) {
		this.sensing_date = sensing_date;
	}
	
	
}
