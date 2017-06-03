package UIT.SE325H22.Group2.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import UIT.SE325H22.Group2.dao.impl.ScheduleDao;
import UIT.SE325H22.Group2.dao.intf.IGenericDao;
import UIT.SE325H22.Group2.dao.intf.IScheduleDao;
import UIT.SE325H22.Group2.model.Schedule;
import UIT.SE325H22.Group2.service.intf.IScheduleService;

@Service
public class ScheduleService extends GenericServiceImpl<Schedule, Integer> implements IScheduleService {
	private IScheduleDao scheduleDao;

	public ScheduleService() {
	}
	 @Autowired
	public ScheduleService(@Qualifier("scheduleDao") IGenericDao<Schedule, Integer> genericDao) {
		super(genericDao);
		this.scheduleDao = (ScheduleDao) genericDao;

	}
}
