package UIT.SE325H22.Group2.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import UIT.SE325H22.Group2.dao.impl.TrainersDao;
import UIT.SE325H22.Group2.dao.intf.IGenericDao;
import UIT.SE325H22.Group2.dao.intf.ITrainersDao;
import UIT.SE325H22.Group2.model.Trainers;
import UIT.SE325H22.Group2.service.intf.ITrainersService;

@Service
// ("trainersService")
public class TrainersService extends GenericServiceImpl<Trainers, Integer> implements ITrainersService {
	private ITrainersDao trainersDao;

	public TrainersService() {
	}
	 @Autowired
	public TrainersService(@Qualifier("trainersDao") IGenericDao<Trainers, Integer> genericDao) {
		super(genericDao);
		this.trainersDao = (TrainersDao) genericDao;

	}
}
