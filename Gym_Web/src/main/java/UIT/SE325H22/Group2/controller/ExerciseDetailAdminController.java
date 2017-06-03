//package UIT.SE325H22.Group2.controller;
//
//import java.util.ArrayList;
//import java.util.List;
//import UIT.SE325H22.Group2.model.ExerciseDetail;
//import UIT.SE325H22.Group2.service.intf.IExerciseDetailService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RestController;
//
//@RestController
//public class ExerciseDetailAdminController {
//	@Autowired
//	IExerciseDetailService exerciseDetailService;
//	
//	@RequestMapping(value = "/getAllExerciseDetails", method = RequestMethod.GET, headers = "Accept=application/json")
//	public List<ExerciseDetail> getExerciseDetails() {
//		List<ExerciseDetail> exerciseDetails = exerciseDetailService.getAll();
//		return exerciseDetails;
//	}
//
//	@RequestMapping(value = "/getExerciseDetail/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
//	public ExerciseDetail getExerciseDetailById(@PathVariable ("id") int id) {
//		//return new ExerciseDetail();
//		return exerciseDetailService.get(id);
//	}
//	
//	@RequestMapping(value = "/getExerciseDetailsById/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
//	public List<ExerciseDetail> getExerciseDetailsById(@PathVariable ("id") int id) {
//		//return new ExerciseDetail();
//		List<ExerciseDetail> exerciseDetails = exerciseDetailService.getAll();
//		List<ExerciseDetail> exerciseDetailsById = new ArrayList<ExerciseDetail>();
//		for(ExerciseDetail exerciseDetail : exerciseDetails ){
//			if(exerciseDetail.getId() == id)
//				exerciseDetailsById.add(exerciseDetail);
//		}
//		return exerciseDetailsById;
//	}
//
//	@RequestMapping(value = "/addExerciseDetail", method = RequestMethod.POST, headers = "Accept=application/json")
//	public void addExerciseDetail(@RequestBody ExerciseDetail exerciseDetail) {	
//		exerciseDetailService.insert(exerciseDetail);
//	}
//
//	@RequestMapping(value = "/updateExerciseDetail", method = RequestMethod.PUT, headers = "Accept=application/json")
//	public void updateExerciseDetail(@RequestBody ExerciseDetail exerciseDetail) {
//		exerciseDetailService.update(exerciseDetail);
//	}
//
//	@RequestMapping(value = "/deleteExerciseDetail/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
//	public void deleteExerciseDetail(@PathVariable("id") int id) {
//		exerciseDetailService.delete(id);
//	}
//}
