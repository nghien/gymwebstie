package UIT.SE325H22.Group2.dao.impl;

import org.springframework.stereotype.Repository;

import UIT.SE325H22.Group2.dao.intf.INutritionDao;
import UIT.SE325H22.Group2.model.Nutrition;

@Repository
public class NutritionDao extends GenericDaoImpl<Nutrition, Integer> implements INutritionDao{

}
