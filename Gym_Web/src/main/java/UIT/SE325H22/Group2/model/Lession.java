package UIT.SE325H22.Group2.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "lesson")
public class Lession extends Base {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "lesson_name")
	private String lessonName;
	@Column(name = "lesson_image")
	private String lessionImage;
	@Column(name = "lesson_info")
	private String lesionInfo;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLessonName() {
		return lessonName;
	}

	public void setLessonName(String lessonName) {
		this.lessonName = lessonName;
	}

	public String getLessionImage() {
		return "<img src='" + lessionImage + "'></img>";
	}

	public void setLessionImage(String lessionImage) {
		this.lessionImage = lessionImage;
	}

	public String getLesionInfo() {
		return lesionInfo;
	}

	public void setLesionInfo(String lesionInfo) {
		this.lesionInfo = lesionInfo;
	}

}
