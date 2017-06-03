package UIT.SE325H22.Group2.service.intf;

import java.util.ArrayList;

import UIT.SE325H22.Group2.model.MuscleType;
import UIT.SE325H22.Group2.viewmodel.MuscleTypeComboboxViewModel;

public interface IMuscleTypeService extends IGenericService<MuscleType, Integer>{
	public ArrayList<MuscleTypeComboboxViewModel> muscleTypeComboboxs() throws InstantiationException, IllegalAccessException;
}
