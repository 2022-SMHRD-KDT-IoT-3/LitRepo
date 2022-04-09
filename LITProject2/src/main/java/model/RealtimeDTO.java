package model;

public class RealtimeDTO {
	private int rt_seq;
	private String mem_id;
	private int rt_pulse;
	private int rt_decibel;
	private String rt_datetime;
	
	//ЦђБе
	private String SoundHour;
	private int Soundavg;
	
	
	public String getSoundHour() {
		return SoundHour;
	}

	public void setSoundHour(String soundHour) {
		SoundHour = soundHour;
	}

	public int getSoundavg() {
		return Soundavg;
	}

	public void setSoundavg(int soundavg) {
		Soundavg = soundavg;
	}


	
	public RealtimeDTO(int rt_seq, String mem_id, int rt_pulse, int rt_decibel, String rt_datetiem) {
		this.rt_seq = rt_seq;
		this.mem_id = mem_id;
		this.rt_pulse = rt_pulse;
		this.rt_decibel = rt_decibel;
		this.rt_datetime = rt_datetime;
	}
	
	public RealtimeDTO(String soundHour, int soundavg) {
		super();
		SoundHour = soundHour;
		Soundavg = soundavg;
	}

	public int getRt_seq() {
		return rt_seq;
	}
	public void setRt_seq(int rt_seq) {
		this.rt_seq = rt_seq;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getRt_pulse() {
		return rt_pulse;
	}
	public void setRt_pulse(int rt_pulse) {
		this.rt_pulse = rt_pulse;
	}
	public int getRt_decibel() {
		return rt_decibel;
	}
	public void setRt_decibel(int rt_decibel) {
		this.rt_decibel = rt_decibel;
	}
	public String getRt_datetime() {
		return rt_datetime;
	}
	public void setRt_datetiem(String rt_datetime) {
		this.rt_datetime = rt_datetime;
	}
	
	
}
