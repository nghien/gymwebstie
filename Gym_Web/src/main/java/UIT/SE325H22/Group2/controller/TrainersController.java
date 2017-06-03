package UIT.SE325H22.Group2.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import UIT.SE325H22.Group2.model.Trainers;
import UIT.SE325H22.Group2.model.Trainers;
import UIT.SE325H22.Group2.service.intf.ITrainersService;
import UIT.SE325H22.Group2.service.intf.ITrainersService;
import UIT.SE325H22.Group2.viewmodel.LessonComboboxViewModel;

@RestController
public class TrainersController {
	@Autowired
	ITrainersService trainersService;
	
	@RequestMapping(value = "/getAllTrainers", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<Trainers> getAllTrainers() {
		List<Trainers> trainers = trainersService.getAll();
		return trainers;
	}


	@RequestMapping(value = "/addTrainers", method = RequestMethod.POST, headers = "Accept=application/json")
	public void addTrainers(@RequestBody Trainers trainers) {	
		trainersService.insert(trainers);
	}

	@RequestMapping(value = "/updateTrainers", method = RequestMethod.PUT, headers = "Accept=application/json")
	public void updateTrainers(@RequestBody Trainers trainers) {
		trainersService.update(trainers);
	}

	@RequestMapping(value = "/deleteTrainers/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
	public void deleteTrainers(@PathVariable("id") Integer id) {
		trainersService.delete(id);
	}

}
