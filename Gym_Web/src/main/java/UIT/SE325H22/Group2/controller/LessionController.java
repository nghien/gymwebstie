package UIT.SE325H22.Group2.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import UIT.SE325H22.Group2.model.Lession;
import UIT.SE325H22.Group2.service.intf.ILessionService;
import UIT.SE325H22.Group2.viewmodel.LessonComboboxViewModel;

@RestController
public class LessionController {
	@Autowired
	ILessionService lessionService;
	
	@RequestMapping(value = "/getAllLessions", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<Lession> getLessions() {
		List<Lession> lessions = lessionService.getAll();
		return lessions;
	}

	@RequestMapping(value = "/getLession/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public Lession getLessionById(@PathVariable ("id") int id) {
		//return new Lession();
		return lessionService.get(id);
	}
	
	@RequestMapping(value = "/getLessionsById/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<Lession> getLessionsById(@PathVariable ("id") int id) {
		//return new Lession();
		List<Lession> lessions = lessionService.getAll();
		List<Lession> lessionsById = new ArrayList<Lession>();
		for(Lession lession : lessions ){
			if(lession.getId() == id)
				lessionsById.add(lession);
		}
		return lessionsById;
	}

	@RequestMapping(value = "/addLession", method = RequestMethod.POST, headers = "Accept=application/json")
	public void addLession(@RequestBody Lession lession) {	
		lessionService.insert(lession);
	}

	@RequestMapping(value = "/updateLession", method = RequestMethod.PUT, headers = "Accept=application/json")
	public void updateLession(@RequestBody Lession lession) {
		lessionService.update(lession);
	}

	@RequestMapping(value = "/deleteLession/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
	public void deleteLession(@PathVariable("id") Integer id) {
		lessionService.delete(id);
	}

	@RequestMapping(value = "/getLessonsCombobox", method = RequestMethod.GET, headers = "Accept=application/json")
	public ArrayList<LessonComboboxViewModel> getLessonsCombobox() throws InstantiationException, IllegalAccessException {
		ArrayList<LessonComboboxViewModel> lessons = lessionService.getLessonsCombobox();
		return lessons;
	}
}
