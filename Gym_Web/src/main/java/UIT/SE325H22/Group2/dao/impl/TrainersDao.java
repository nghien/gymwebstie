package UIT.SE325H22.Group2.dao.impl;

import org.springframework.stereotype.Repository;

import UIT.SE325H22.Group2.dao.intf.ISongOnlineDao;
import UIT.SE325H22.Group2.dao.intf.ITrainersDao;
import UIT.SE325H22.Group2.model.SongOnline;
import UIT.SE325H22.Group2.model.Trainers;
@Repository
public class TrainersDao extends GenericDaoImpl<Trainers, Integer> implements ITrainersDao{

}
