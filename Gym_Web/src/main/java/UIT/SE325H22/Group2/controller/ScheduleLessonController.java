package UIT.SE325H22.Group2.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import UIT.SE325H22.Group2.model.ScheduleLesson;
import UIT.SE325H22.Group2.viewmodel.Mapper;
import UIT.SE325H22.Group2.viewmodel.ScheduleLessonMapViewModel;
import UIT.SE325H22.Group2.viewmodel.ScheduleLessonAdmin.ScheduleLessonViewModel;

@RestController
public class ScheduleLessonController {
	@Autowired
	UIT.SE325H22.Group2.service.impl.ScheduleLessonService ScheduleLessonService;

	//
	@RequestMapping(value = "/getAllScheduleLessons", method = RequestMethod.GET, headers = "Accept=application/json",produces = "application/json; charset=utf-8")
	public List<ScheduleLessonMapViewModel> getScheduleLessons() throws InstantiationException, IllegalAccessException {
		List<ScheduleLesson> ScheduleLesson = ScheduleLessonService.getAll();
		
//		ArrayList<ScheduleViewModel> schedule = Mapper.copy((ArrayList)Schedules, ScheduleViewModel.class, new IOnMapper<ScheduleViewModel,Schedule>() {
//			//thuc hien copy them 1 vai thuoc tinh khong giong bang tay
//			@Override
//			public void onMapperItem(ScheduleViewModel to, Schedule from) {
//				to.setScheduleImage(from.getScheduleImage());
//			}
//		});
		ArrayList<ScheduleLessonMapViewModel> scheduleLesson = Mapper.copy((ArrayList)ScheduleLesson, ScheduleLessonMapViewModel.class, null);
		return scheduleLesson;
	}

	@RequestMapping(value = "/getScheduleLesson/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<ScheduleLesson> getScheduleLessonById(@PathVariable("id") int id) {
		// return new ScheduleLesson();
		return ScheduleLessonService.get(id);
	}
	
	@RequestMapping(value = "/getScheduleLessonViewModel/{scheduleId}", method = RequestMethod.GET, headers = "Accept=application/json")
	public ScheduleLessonViewModel getScheduleLessonViewModel(@PathVariable("scheduleId") int scheduleId) throws InstantiationException, IllegalAccessException {
		// return new ScheduleLesson();
		return ScheduleLessonService.getViewModel(scheduleId);
	}

	@RequestMapping(value = "/addScheduleLesson", method = RequestMethod.POST, headers = "Accept=application/json")
	public void addScheduleLesson(@RequestBody ScheduleLessonViewModel scheduleLessonViewModel) {
		ScheduleLessonService.inserts(scheduleLessonViewModel);
	}
	
	 @RequestMapping(value = "/updateScheduleLesson", method = RequestMethod.PUT, headers = "Accept=application/json")
	 public void updateScheduleLesson(@RequestBody ScheduleLessonViewModel scheduleLessonViewModel) {
		 ScheduleLessonService.updates(scheduleLessonViewModel);
	 }
	 
	 @RequestMapping(value = "/deleteScheduleLesson/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
	 public void deleteScheduleLesson(@PathVariable("id") int id) {
		 ScheduleLessonService.delete(id);
	 }
}
