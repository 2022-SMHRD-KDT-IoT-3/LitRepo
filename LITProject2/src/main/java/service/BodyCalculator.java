package service;

import java.util.List;

import model.PhysicalDTO;
import model.RealtimeDTO;

public class BodyCalculator {

	public String chart1Labels(List<PhysicalDTO> BPMavgList) {

		String labels = "";

		for (int i = 0; i < BPMavgList.size(); i++) {

			String timestamp = BPMavgList.get(i).getBPMHour();
			timestamp = timestamp.substring(11, 13);

			labels += "'" + timestamp + "',";

		}
		labels = labels.substring(0, labels.length() - 1);

	

		return labels;

	}

	public String chart1Data(List<PhysicalDTO> BPMavgList) {
		
		String data = "";

		for (int i = 0; i < BPMavgList.size(); i++) {

			int BPMavg = BPMavgList.get(i).getBPMavg();

			data +=  BPMavg + ",";

		}
		data = data.substring(0, data.length() - 1);

		System.out.println(data);

		return data;

	}
	
	public String chart2Labels(List<RealtimeDTO> SoundavgList) {
		String labels = "";

		for (int i = 0; i < SoundavgList.size(); i++) {

			String timestamp = SoundavgList.get(i).getSoundHour();
			timestamp = timestamp.substring(11, 13);

			labels += "'" + timestamp + "',";

		}
		labels = labels.substring(0, labels.length() - 1);

	

		return labels;
	}
	
	
	public String chart2Data(List<RealtimeDTO> SoundavgList) {
		
		String data = "";

		for (int i = 0; i < SoundavgList.size(); i++) {

			int BPMavg = SoundavgList.get(i).getSoundavg();

			data +=  BPMavg + ",";

		}
		data = data.substring(0, data.length() - 1);

		System.out.println(data);

		return data;

	}
	
	

}
