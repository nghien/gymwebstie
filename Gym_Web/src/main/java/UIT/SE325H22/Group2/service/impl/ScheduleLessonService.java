package UIT.SE325H22.Group2.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import UIT.SE325H22.Group2.dao.impl.ScheduleDao;
import UIT.SE325H22.Group2.dao.impl.ScheduleLessonDao;
import UIT.SE325H22.Group2.dao.intf.IGenericDao;
import UIT.SE325H22.Group2.dao.intf.IScheduleDao;
import UIT.SE325H22.Group2.dao.intf.IScheduleLessonDao;
import UIT.SE325H22.Group2.model.Schedule;
import UIT.SE325H22.Group2.model.ScheduleLesson;
import UIT.SE325H22.Group2.service.intf.IScheduleLessonService;
import UIT.SE325H22.Group2.viewmodel.Mapper;
import UIT.SE325H22.Group2.viewmodel.ScheduleLessonAdmin.DayViewModel;
import UIT.SE325H22.Group2.viewmodel.ScheduleLessonAdmin.LessonViewModel;
import UIT.SE325H22.Group2.viewmodel.ScheduleLessonAdmin.ScheduleLessonViewModel;
import UIT.SE325H22.Group2.viewmodel.ScheduleLessonAdmin.WeekViewModel;

@Service
public class ScheduleLessonService {
	@Autowired
	ScheduleLessonDao scheduleLessonDao;
	@Autowired
	ScheduleDao scheduleDao;

	@Transactional
	public void inserts(ScheduleLessonViewModel scheduleLessonViewModel) {
		Schedule schedule;
		try {
			schedule = Mapper.copy(scheduleLessonViewModel, Schedule.class, null);
			Integer scheduleId = scheduleDao.insert(schedule);

			for (int iWeek = 0; iWeek < scheduleLessonViewModel.getWeeks().size(); iWeek++) {
				for (int iDay = 0; iDay < scheduleLessonViewModel.getWeeks().get(iWeek).getDays().size(); iDay++) {
					DayViewModel day = scheduleLessonViewModel.getWeeks().get(iWeek).getDays().get(iDay);
					for (LessonViewModel lession : day.getLessons()) {
						ScheduleLesson scheduleLesson = Mapper.copy(day, ScheduleLesson.class, null);

						scheduleLesson.setDay(iDay + 1);
						scheduleLesson.setWeek(iWeek + 1);
						scheduleLesson.setLessionId(lession.getId());
						scheduleLesson.setScheduleId(scheduleId);
						scheduleLessonDao.insert(scheduleLesson);
					}
				}
			}

		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Transactional
	public List<ScheduleLesson> getAll() {
		return scheduleLessonDao.getAll();
	}

	@Transactional
	public List<ScheduleLesson> get(int id) {
		return scheduleLessonDao.getByScheduleId(id);
	}

	@Transactional
	public ScheduleLessonViewModel getViewModel(int scheduleId) throws InstantiationException, IllegalAccessException {
		ScheduleLessonViewModel scheduleLessonViewModel;// = new
														// ScheduleLessonViewModel();
		Schedule schedule = scheduleDao.getById(scheduleId);
		scheduleLessonViewModel = Mapper.copy(schedule, ScheduleLessonViewModel.class, null);
		ArrayList<WeekViewModel> weeks = new ArrayList<>();
		scheduleLessonViewModel.setWeeks(weeks);
		List<ScheduleLesson> lessons = scheduleLessonDao.getByScheduleId(scheduleId);
		int week = 0;
		int iDay = 0;

		for (ScheduleLesson lesson : lessons) {
			if (lesson.getWeek() > week) {
				WeekViewModel weekViewModel = new WeekViewModel();
				week = lesson.getWeek();
				weekViewModel.setDays(new ArrayList<DayViewModel>());
				weeks.add(weekViewModel);
				iDay = 0;
			}
			if (lesson.getDay() > iDay) {
				DayViewModel day = new DayViewModel();
				weeks.get(week - 1).getDays().add(day);
				day.setLessons(new ArrayList<LessonViewModel>());
				day.setScheduleLessonInfo(lesson.getScheduleLessonInfo());
				iDay = lesson.getDay();
			}
			LessonViewModel lessonViewModel = new LessonViewModel();
			lessonViewModel.setId(lesson.getLessionId());

			weeks.get(week - 1).getDays().get(iDay - 1).getLessons().add(lessonViewModel);
		}
		return scheduleLessonViewModel;
	}
	
	@Transactional
	public void updates(ScheduleLessonViewModel scheduleLessonViewModel) {
		Schedule schedule;
		try {
			schedule = Mapper.copy(scheduleLessonViewModel, Schedule.class, null);
			delete(scheduleLessonViewModel.getScheduleId());
			inserts(scheduleLessonViewModel);
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Transactional
	public void delete(int scheduleId) {
		List<ScheduleLesson> lessons = scheduleLessonDao.getAll();
		for(ScheduleLesson lesson : lessons){
			if(lesson.getScheduleId()==scheduleId)
				scheduleLessonDao.delete(lesson.getId());
		}
		scheduleDao.delete(scheduleId);
	}
}
