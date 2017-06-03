package UIT.SE325H22.Group2.dao.impl;

import org.springframework.stereotype.Repository;

import UIT.SE325H22.Group2.dao.intf.IMuscleTypeDao;
import UIT.SE325H22.Group2.model.MuscleType;

@Repository
public class MuscleTypeDao extends GenericDaoImpl<MuscleType, Integer> implements IMuscleTypeDao{
}
