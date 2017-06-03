package UIT.SE325H22.Group2.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/*
 * This is our model class and it corresponds to SinhVien table in database
 */
@Entity
@Table(name="SINHVIEN")
public class SinhVien{
	
	public SinhVien(int id, String ten, String diachi,String mssv,String avatar) {
		super();
		this.id = id;
		this.ten = ten;
		this.diachi = diachi;
		this.mssv = mssv;
		this.avatar = avatar;
	}

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="ten")
	private String ten;	
	
	@Column(name="diachi")
	private String diachi;
	
	@Column(name="mssv")
	private String mssv;
	
	@Column(name="avatar")
	private String avatar;
	
	public SinhVien() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getMssv() {
		return mssv;
	}

	public void setMssv(String mssv) {
		this.mssv = mssv;
	}

	public String getAvatar() {
		return "<img src='resources/avatar/" + avatar + "' alt='" + avatar + "' height='100' width='100'>";
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	
	
	
}