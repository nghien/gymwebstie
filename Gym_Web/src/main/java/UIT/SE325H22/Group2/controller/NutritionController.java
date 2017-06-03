package UIT.SE325H22.Group2.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import UIT.SE325H22.Group2.model.Nutrition;
import UIT.SE325H22.Group2.model.Nutrition;
import UIT.SE325H22.Group2.service.intf.INutritionService;
import UIT.SE325H22.Group2.service.intf.INutritionService;
import UIT.SE325H22.Group2.viewmodel.LessonComboboxViewModel;

@RestController
public class NutritionController {
	@Autowired
	INutritionService nutritionService;
	
	@RequestMapping(value = "/getAllNutritions", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<Nutrition> getNutritions() {
		List<Nutrition> nutritions = nutritionService.getAll();
		return nutritions;
	}

	@RequestMapping(value = "/getNutrition/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public Nutrition getNutritionById(@PathVariable ("id") int id) {
		//return new Nutrition();
		return nutritionService.get(id);
	}
	
	@RequestMapping(value = "/getNutritionsById/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<Nutrition> getNutritionsById(@PathVariable ("id") int id) {
		//return new Nutrition();
		List<Nutrition> nutritions = nutritionService.getAll();
		List<Nutrition> nutritionsById = new ArrayList<Nutrition>();
		for(Nutrition nutrition : nutritions ){
			if(nutrition.getId() == id)
				nutritionsById.add(nutrition);
		}
		return nutritionsById;
	}

	@RequestMapping(value = "/addNutrition", method = RequestMethod.POST, headers = "Accept=application/json")
	public void addNutrition(@RequestBody Nutrition nutrition) {	
		nutritionService.insert(nutrition);
	}

	@RequestMapping(value = "/updateNutrition", method = RequestMethod.PUT, headers = "Accept=application/json")
	public void updateNutrition(@RequestBody Nutrition nutrition) {
		nutritionService.update(nutrition);
	}

	@RequestMapping(value = "/deleteNutrition/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
	public void deleteNutrition(@PathVariable("id") Integer id) {
		nutritionService.delete(id);
	}

}
