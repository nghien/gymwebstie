package UIT.SE325H22.Group2.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import UIT.SE325H22.Group2.model.Schedule;
import UIT.SE325H22.Group2.service.intf.IScheduleService;
import UIT.SE325H22.Group2.viewmodel.Mapper;
import UIT.SE325H22.Group2.viewmodel.ScheduleViewModel;
import UIT.SE325H22.Group2.viewmodel.ScheduleLessonAdmin.ScheduleLessonViewModel;

@RestController
public class ScheduleController {
	@Autowired
	IScheduleService ScheduleService;

	@RequestMapping(value = "/getAllSchedules", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<ScheduleViewModel> getSchedules() throws InstantiationException, IllegalAccessException {
		List<Schedule> Schedules = ScheduleService.getAll();
		ArrayList<ScheduleViewModel> schedule = Mapper.copy((ArrayList)Schedules, ScheduleViewModel.class, null);
		return schedule;
	}
	
	@RequestMapping(value = "/getSchedule/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public Schedule getScheduleById(@PathVariable ("id") int id) {
		//return new Schedule();
		return ScheduleService.get(id);
	}

	@RequestMapping(value = "/addSchedule", method = RequestMethod.POST, headers = "Accept=application/json")
	public void addSchedule(@RequestBody Schedule schedule) {	
		ScheduleService.insert(schedule);
	}

	@RequestMapping(value = "/updateSchedule", method = RequestMethod.PUT, headers = "Accept=application/json")
	public void updateSchedule(@RequestBody Schedule schedule) {
		ScheduleService.update(schedule);
	}

	@RequestMapping(value = "/deleteSchedule/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
	public void deleteSchedule(@PathVariable("id") Integer id) {
		ScheduleService.delete(id);
	}
}
