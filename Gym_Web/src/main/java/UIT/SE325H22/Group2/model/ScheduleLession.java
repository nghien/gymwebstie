package UIT.SE325H22.Group2.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class ScheduleLession extends Base {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "lession_id")
	private int lessionId;
	@Column(name = "schedule_id")
	private int scheduleId;
	@Column(name = "thu")
	private int day;
	@Column(name = "tuan")
	private int week;
	@Column(name = "schedule_lession_info")
	private String scheduleLessionInfo;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
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
	public String getScheduleLessionInfo() {
		return scheduleLessionInfo;
	}
	public void setScheduleLessionInfo(String scheduleLessionInfo) {
		this.scheduleLessionInfo = scheduleLessionInfo;
	}
	
	
	
	
}
