package UIT.SE325H22.Group2.viewmodel.ScheduleLessonAdmin;

import java.util.ArrayList;

public class DayViewModel {
	private ArrayList<LessonViewModel> lessons;
	private String scheduleLessonInfo;
	public String getScheduleLessonInfo() {
		return scheduleLessonInfo;
	}
	public void setScheduleLessonInfo(String scheduleLessonInfo) {
		this.scheduleLessonInfo = scheduleLessonInfo;
	}
	public ArrayList<LessonViewModel> getLessons() {
		return lessons;
	}
	public void setLessons(ArrayList<LessonViewModel> lessons) {
		this.lessons = lessons;
	}

	

}
