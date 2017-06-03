package UIT.SE325H22.Group2.service.intf;

import java.util.ArrayList;

import UIT.SE325H22.Group2.model.Lession;
import UIT.SE325H22.Group2.viewmodel.LessonComboboxViewModel;

public interface ILessionService extends IGenericService<Lession, Integer>{

	ArrayList<LessonComboboxViewModel> getLessonsCombobox() throws InstantiationException, IllegalAccessException;
	
}
