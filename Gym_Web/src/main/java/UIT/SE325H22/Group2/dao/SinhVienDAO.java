package UIT.SE325H22.Group2.dao;

import java.util.List;

import UIT.SE325H22.Group2.model.SinhVien;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SinhVienDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public List<SinhVien> getAllSinhViens() {
		Session session = this.sessionFactory.getCurrentSession();
		List<SinhVien> sinhVienList = session.createQuery("from SinhVien").list();
		return sinhVienList;
	}

	public SinhVien getSinhVien(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		SinhVien sinhVien = (SinhVien) session.load(SinhVien.class, new Integer(id));
		return sinhVien;
	}

	public SinhVien addSinhVien(SinhVien sinhVien) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(sinhVien);
		return sinhVien;
	}

	public void updateSinhVien(SinhVien sinhVien) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(sinhVien);
	}

	public void deleteSinhVien(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		SinhVien p = (SinhVien) session.load(SinhVien.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
	}	
}
