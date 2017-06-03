package UIT.SE325H22.Group2.service.impl;

import java.util.ArrayList;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import UIT.SE325H22.Group2.dao.impl.LessionDao;
import UIT.SE325H22.Group2.dao.intf.IGenericDao;
import UIT.SE325H22.Group2.dao.intf.ILessionDao;
import UIT.SE325H22.Group2.model.Lession;
import UIT.SE325H22.Group2.service.intf.ILessionService;
import UIT.SE325H22.Group2.viewmodel.LessonComboboxViewModel;
import UIT.SE325H22.Group2.viewmodel.Mapper;

@Service
public class LessionService extends GenericServiceImpl<Lession, Integer> implements ILessionService {
	private ILessionDao lessionDao;

	public LessionService() {
	}
	 @Autowired
	public LessionService(@Qualifier("lessionDao") IGenericDao<Lession, Integer> genericDao) {
		super(genericDao);
		this.lessionDao = (LessionDao) genericDao;

	}
	@Transactional
	@Override
	public ArrayList<LessonComboboxViewModel> getLessonsCombobox() throws InstantiationException, IllegalAccessException {
		return Mapper.copy((ArrayList<Lession>)lessionDao.getAll(), LessonComboboxViewModel.class, null) ;
	}

}
