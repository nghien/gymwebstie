package UIT.SE325H22.Group2.viewmodel;

public class ScheduleViewModel {
	private int id;
	private String scheduleName;
	private String scheduleImage;
	private String scheduleInfo;
	public String getScheduleName() {
		return scheduleName;
	}
	public void setScheduleName(String scheduleName) {
		this.scheduleName = scheduleName;
	}
	public String getScheduleImage() {
		return "<img src='" + scheduleImage + "' alt='" + scheduleName + "' height='100' width='100'>";
	}
	public void setScheduleImage(String scheduleImage) {
		this.scheduleImage = scheduleImage;
	}
	public String getScheduleInfo() {
		return scheduleInfo;
	}
	public void setScheduleInfo(String scheduleInfo) {
		this.scheduleInfo = scheduleInfo;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
}
