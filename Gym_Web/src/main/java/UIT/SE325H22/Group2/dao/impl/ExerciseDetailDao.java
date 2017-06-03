package UIT.SE325H22.Group2.dao.impl;

import org.springframework.stereotype.Repository;
import UIT.SE325H22.Group2.dao.intf.IExerciseDetailDao;
import UIT.SE325H22.Group2.model.ExerciseDetail;

@Repository
public class ExerciseDetailDao extends GenericDaoImpl<ExerciseDetail, Integer> implements IExerciseDetailDao{
}
