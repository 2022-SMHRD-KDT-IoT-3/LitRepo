package arduinotest;

public class BPMavg {

	// BPM ��ȿ���� �迭�� �����Ͽ� ��հ� ����.
	
	
	
	private static int cnt = 0;
	public static int BPMsum = 0;
	public static int BPMavg = 0;
	private static int[] BPMarray = new int[10];
	
	public int BPMcalculator(int BPM) {
		

		if (BPM >= 30 && BPM <= 120) {
			BPMarray[cnt] = BPM;
			cnt++;
		}

		if (cnt == 10) {
			for(int i = 0; i < BPMarray.length; i++) {
				BPMsum += BPMarray[i];
			}
			cnt = 0;
			
			return BPMsum / 10;
			
		} 
		
		
		
		return 0;
	}
	
	
}
