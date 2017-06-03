package UIT.SE325H22.Group2.service;

import java.util.List;
import UIT.SE325H22.Group2.dao.SinhVienDAO;
import UIT.SE325H22.Group2.model.SinhVien;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("sinhVienService")
public class SinhVienService {

	@Autowired
	SinhVienDAO sinhVienDao;
	
	@Transactional
	public List<SinhVien> getAllSinhViens() {
		return sinhVienDao.getAllSinhViens();
	}

	@Transactional
	public SinhVien getSinhVien(int id) {
		return sinhVienDao.getSinhVien(id);
	}

	@Transactional
	public void addSinhVien(SinhVien sinhVien) {
		sinhVienDao.addSinhVien(sinhVien);
	}

	@Transactional
	public void updateSinhVien(SinhVien sinhVien) {
		sinhVienDao.updateSinhVien(sinhVien);

	}

	@Transactional
	public void deleteSinhVien(int id) {
		sinhVienDao.deleteSinhVien(id);
	}
}
