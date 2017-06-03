package UIT.SE325H22.Group2.controller;

import java.util.ArrayList;
import java.util.List;
import UIT.SE325H22.Group2.model.SinhVien;
import UIT.SE325H22.Group2.service.SinhVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SinhVienController {
	
	@Autowired
	SinhVienService sinhVienService;
	
	@RequestMapping(value = "/getAllSinhViens", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<SinhVien> getSinhViens() {
		List<SinhVien> sinhViens = sinhVienService.getAllSinhViens();
		return sinhViens;
	}

	@RequestMapping(value = "/getSinhVien/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public SinhVien getSinhVienById(@PathVariable ("id") int id) {
		//return new SinhVien();
		return sinhVienService.getSinhVien(id);
	}
	
	@RequestMapping(value = "/getSinhViensById/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<SinhVien> getSinhViensById(@PathVariable ("id") int id) {
		//return new SinhVien();
		List<SinhVien> sinhViens = sinhVienService.getAllSinhViens();
		List<SinhVien> sinhViensById = new ArrayList<SinhVien>();
		for(SinhVien sinhvien : sinhViens ){
			if(sinhvien.getId() == id)
				sinhViensById.add(sinhvien);
		}
		return sinhViensById;
	}

	@RequestMapping(value = "/addSinhVien", method = RequestMethod.POST, headers = "Accept=application/json")
	public void addSinhVien(@RequestBody SinhVien sinhVien) {	
		sinhVienService.addSinhVien(sinhVien);
	}

	@RequestMapping(value = "/updateSinhVien", method = RequestMethod.PUT, headers = "Accept=application/json")
	public void updateSinhVien(@RequestBody SinhVien sinhVien) {
		sinhVienService.updateSinhVien(sinhVien);
	}

	@RequestMapping(value = "/deleteSinhVien/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
	public void deleteSinhVien(@PathVariable("id") int id) {
		sinhVienService.deleteSinhVien(id);
	}
}
