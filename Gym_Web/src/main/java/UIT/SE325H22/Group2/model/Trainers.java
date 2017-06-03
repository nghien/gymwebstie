package UIT.SE325H22.Group2.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "trainers")
public class Trainers extends Base{
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id ;
	@Column(name ="trainers_name")
	private String trainers_name ;
	@Column(name ="trainers_image")
	private String trainers_image ;
	@Column(name ="position")
	private String position ;
	@Column(name ="phone")
	private String phone ;
	@Column(name ="facebook")
	private String facebook ;
	@Column(name ="email")
	private String email ;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTrainers_name() {
		return trainers_name;
	}
	public void setTrainers_name(String trainers_name) {
		this.trainers_name = trainers_name;
	}
	public String getTrainers_image() {
		return "<img class=\"img-responsive\" src='"+trainers_image+"'></img>";
	}
	
	public String getTrainers_Linkimage() {
		return trainers_image;
	}
	public void setTrainers_image(String trainers_image) {
		this.trainers_image = trainers_image;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getFacebook() {
		return facebook;
	}
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
