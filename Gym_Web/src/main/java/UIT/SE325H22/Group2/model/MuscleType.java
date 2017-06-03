package UIT.SE325H22.Group2.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "muscle_type")
public class MuscleType extends Base{
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "muscle_type_name")
	private String muscleTypeName;
	@Column(name = "muscle_type_image")
	private String muscleTypeImage;
	
	
	public MuscleType() {
		super();
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMuscleTypeName() {
		return muscleTypeName;
	}
	public void setMuscleTypeName(String muscleTypeName) {
		this.muscleTypeName = muscleTypeName;
	}
	public String getMuscleTypeImage() {
		return "<img src='" + muscleTypeImage + "'></img>";
	}
	public void setMuscleTypeImage(String muscleTypeImage) {
		this.muscleTypeImage = muscleTypeImage;
	}
	
}
