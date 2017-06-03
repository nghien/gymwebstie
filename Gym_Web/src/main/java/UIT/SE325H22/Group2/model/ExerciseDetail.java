package UIT.SE325H22.Group2.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "exercisedetail")
public class ExerciseDetail extends Base {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "muscle_type_id")
	private int muscleTypeId;
	@Column(name = "exercise_detail_name")
	private String exerciseDetailName;
	@Column(name = "exercise_detail_image")
	private String exerciseDetailImage;
	
	@Column(name = "exercise_detail_info")
	private String exerciseDetailInfo;
	@Column(name = "hiep")
	private int set;
	@Column(name = "timeBreak")
	private int timeBreak;
	@Column(name = "timeExercise")
	private int timeExercise;
	@Column(name = "videoID")
	private String videoId;

	


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMuscleTypeId() {
		return muscleTypeId;
	}

	public void setMuscleTypeId(int muscleTypeId) {
		this.muscleTypeId = muscleTypeId;
	}

	public String getExerciseDetailName() {
		return exerciseDetailName;
	}

	public void setExerciseDetailName(String exerciseDetailName) {
		this.exerciseDetailName = exerciseDetailName;
	}

	public String getExerciseDetailImage() {
		return "<img class=\"img-responsive\"  src='" + exerciseDetailImage + "'></img>";
	}
	
	public String getExerciseDetailLinkImage() {
		return  exerciseDetailImage;
	}
	


	public void setExerciseDetailImage(String exerciseDetailImage) {
		this.exerciseDetailImage = exerciseDetailImage;
	}

	public String getExerciseDetailInfo() {
		return exerciseDetailInfo;
	}

	public void setExerciseDetailInfo(String exerciseDetailInfo) {
		this.exerciseDetailInfo = exerciseDetailInfo;
	}

	public int getSet() {
		return set;
	}

	public void setSet(int set) {
		this.set = set;
	}

	public int getTimeBreak() {
		return timeBreak;
	}

	public void setTimeBreak(int timeBreak) {
		this.timeBreak = timeBreak;
	}

	public int getTimeExercise() {
		return timeExercise;
	}

	public void setTimeExercise(int timeExercise) {
		this.timeExercise = timeExercise;
	}

	public String getVideoId() {
		return videoId;
	}

	public void setVideoId(String videoId) {
		this.videoId = videoId;
	}

}
