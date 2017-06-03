package UIT.SE325H22.Group2.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "nutrition")
public class Nutrition extends Base {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "nutrition_name")
	private String nutritionName;
	@Column(name = "nutrition_image")
	private String nutritionImage;
	@Column(name = "nutrition_info")
	private String nutritionInfo;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNutritionName() {
		return nutritionName;
	}

	public void setNutritionName(String nutritionName) {
		this.nutritionName = nutritionName;
	}

	public String getNutritionImage() {
		return "<img class=\"img-responsive\" src='" + nutritionImage + "'></img>";
	}
	
	public String getNutritionLinkImage() {
		return nutritionImage;
	}


	public void setNutritionImage(String nutritionImage) {
		this.nutritionImage = nutritionImage;
	}

	public String getNutritionInfo() {
		return nutritionInfo;
	}

	public void setNutritionInfo(String nutritionInfo) {
		this.nutritionInfo = nutritionInfo;
	}

}
