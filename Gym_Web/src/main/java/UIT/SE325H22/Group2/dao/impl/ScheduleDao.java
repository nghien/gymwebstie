package UIT.SE325H22.Group2.dao.impl;

import org.springframework.stereotype.Repository;

import UIT.SE325H22.Group2.dao.intf.IScheduleDao;
import UIT.SE325H22.Group2.model.Schedule;
@Repository
public class ScheduleDao extends GenericDaoImpl<Schedule, Integer> implements IScheduleDao{

}
