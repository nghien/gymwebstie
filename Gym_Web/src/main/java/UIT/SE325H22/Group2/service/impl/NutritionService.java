package UIT.SE325H22.Group2.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import UIT.SE325H22.Group2.dao.impl.NutritionDao;
import UIT.SE325H22.Group2.dao.intf.IGenericDao;
import UIT.SE325H22.Group2.dao.intf.INutritionDao;
import UIT.SE325H22.Group2.model.Nutrition;
import UIT.SE325H22.Group2.service.intf.INutritionService;

@Service
//("nutritionService")
public class NutritionService extends GenericServiceImpl<Nutrition, Integer> implements INutritionService {
	private INutritionDao nutritionDao;

	public NutritionService() {
	}
	 @Autowired
	public NutritionService(@Qualifier("nutritionDao") IGenericDao<Nutrition, Integer> genericDao) {
		super(genericDao);
		this.nutritionDao = (NutritionDao) genericDao;
	}
}
