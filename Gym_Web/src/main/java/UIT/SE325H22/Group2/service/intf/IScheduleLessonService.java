package UIT.SE325H22.Group2.service.intf;

import UIT.SE325H22.Group2.model.ScheduleLesson;
import UIT.SE325H22.Group2.viewmodel.ScheduleLessonAdmin.ScheduleLessonViewModel;

public interface IScheduleLessonService extends IGenericService<ScheduleLesson,Integer>{

	void inserts(ScheduleLessonViewModel scheduleLessonViewModel);
	ScheduleLessonViewModel getViewModel();
}
