package UIT.SE325H22.Group2.service.impl;

import java.util.ArrayList;
import org.springframework.transaction.annotation.Propagation;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;

import UIT.SE325H22.Group2.dao.impl.MuscleTypeDao;
import UIT.SE325H22.Group2.dao.intf.IGenericDao;
import UIT.SE325H22.Group2.dao.intf.IMuscleTypeDao;
import UIT.SE325H22.Group2.model.MuscleType;
import UIT.SE325H22.Group2.service.intf.IMuscleTypeService;
import UIT.SE325H22.Group2.viewmodel.Mapper;
import UIT.SE325H22.Group2.viewmodel.MuscleTypeComboboxViewModel;

@Service
public class MuscleTypeService extends GenericServiceImpl<MuscleType, Integer> implements IMuscleTypeService {
	private IMuscleTypeDao muscleTypeDao;

	public MuscleTypeService() {
	}
	 @Autowired
	public MuscleTypeService(@Qualifier("muscleTypeDao") IGenericDao<MuscleType, Integer> genericDao) {
		super(genericDao);
		this.muscleTypeDao = (MuscleTypeDao) genericDao;

	}
	
	@Override
	@Transactional
	public ArrayList<MuscleTypeComboboxViewModel> muscleTypeComboboxs()
			throws InstantiationException, IllegalAccessException {
		return Mapper.copy((ArrayList)muscleTypeDao.getAll(), MuscleTypeComboboxViewModel.class, null );
	}
}
