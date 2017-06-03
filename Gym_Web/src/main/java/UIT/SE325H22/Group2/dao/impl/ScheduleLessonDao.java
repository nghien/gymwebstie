package UIT.SE325H22.Group2.dao.impl;

import java.util.List;

import javax.management.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import UIT.SE325H22.Group2.dao.intf.IScheduleLessonDao;
import UIT.SE325H22.Group2.model.ScheduleLesson;
@Repository
public class ScheduleLessonDao extends GenericDaoImpl<ScheduleLesson, Integer> implements IScheduleLessonDao{
	public List<ScheduleLesson> getByScheduleId(int scheduleId) {
		
		String hql = "FROM ScheduleLesson E WHERE E.scheduleId = " + scheduleId;
		org.hibernate.Query query = currentSession().createQuery(hql);
		
		List results = query.list();
		
		return (List<ScheduleLesson>) results;
	}
}
