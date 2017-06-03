package UIT.SE325H22.Group2.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import UIT.SE325H22.Group2.model.MuscleType;
import UIT.SE325H22.Group2.service.intf.IMuscleTypeService;
import UIT.SE325H22.Group2.viewmodel.MuscleTypeComboboxViewModel;

@RestController
public class MuscleTypeController {
	@Autowired
	IMuscleTypeService muscleTypeService;
	
	@RequestMapping(value = "/getAllMuscleTypes", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<MuscleType> getMuscleTypes() {
		List<MuscleType> muscleTypes = muscleTypeService.getAll();
		return muscleTypes;
	}

	@RequestMapping(value = "/getMuscleType/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public MuscleType getMuscleTypeById(@PathVariable ("id") int id) {
		//return new MuscleType();
		return muscleTypeService.get(id);
	}
	
	@RequestMapping(value = "/getMuscleTypesById/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<MuscleType> getMuscleTypesById(@PathVariable ("id") int id) {
		//return new MuscleType();
		List<MuscleType> muscleTypes = muscleTypeService.getAll();
		List<MuscleType> muscleTypesById = new ArrayList<MuscleType>();
		for(MuscleType muscleType : muscleTypes ){
			if(muscleType.getId() == id)
				muscleTypesById.add(muscleType);
		}
		return muscleTypesById;
	}

	@RequestMapping(value = "/addMuscleType", method = RequestMethod.POST, headers = "Accept=application/json")
	public void addMuscleType(@RequestBody MuscleType muscleType) {	
		muscleTypeService.insert(muscleType);
	}

	@RequestMapping(value = "/updateMuscleType", method = RequestMethod.PUT, headers = "Accept=application/json")
	public void updateMuscleType(@RequestBody MuscleType muscleType) {
		muscleTypeService.update(muscleType);
	}

	@RequestMapping(value = "/deleteMuscleType/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
	public void deleteMuscleType(@PathVariable("id") int id) {
		muscleTypeService.delete(id);
	}
	
	@RequestMapping(value = "/muscleTypeComboboxs", method = RequestMethod.GET, headers = "Accept=application/json")
	public ArrayList<MuscleTypeComboboxViewModel> muscleTypeComboboxs() throws InstantiationException, IllegalAccessException{
		return muscleTypeService.muscleTypeComboboxs();
	}

}
