package UIT.SE325H22.Group2.viewmodel;

public class ScheduleLessonMapViewModel {
	
	private int lessionId;
	public int getLessionId() {
		return lessionId;
	}
	public void setLessionId(int lessionId) {
		this.lessionId = lessionId;
	}
	public int getScheduleId() {
		return scheduleId;
	}
	public void setScheduleId(int scheduleId) {
		this.scheduleId = scheduleId;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public int getWeek() {
		return week;
	}
	public void setWeek(int week) {
		this.week = week;
	}
	public String getScheduleLessonInfo() {
		return scheduleLessonInfo;
	}
	public void setScheduleLessonInfo(String scheduleLessonInfo) {
		this.scheduleLessonInfo = scheduleLessonInfo;
	}
	private int scheduleId;
	private int day;
	private int week;
	private String scheduleLessonInfo;
	
}
