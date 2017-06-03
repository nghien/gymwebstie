package UIT.SE325H22.Group2.viewmodel;

import java.util.ArrayList;

import UIT.SE325H22.Group2.viewmodel.MapperDemo.SinhVien;
import UIT.SE325H22.Group2.viewmodel.MapperDemo.SinhVienViewModel;

public class MapperDemo {
	public static class SinhVien{
		private String Ho;
		private String Ten;
		private String MSSV;
		private String HinhAnh;
		
		public String getHo() {
			return Ho;
		}
		public void setHo(String ho) {
			Ho = ho;
		}
		public String getTen() {
			return Ten;
		}
		public void setTen(String ten) {
			Ten = ten;
		}
		public String getHinhAnh() {
			return HinhAnh;
		}
		public void setHinhAnh(String hinhAnh) {
			HinhAnh = hinhAnh;
		}
		public String getMSSV() {
			return MSSV;
		}
		public void setMSSV(String mSSV) {
			MSSV = mSSV;
		}

	}
	
	public static class SinhVienViewModel {
		private String HoVaTen;
		private String MSSV;
		private String HinhAnh;
		
		public String getHoVaTen() {
			return HoVaTen;
		}
		public void setHoVaTen(String hoVaTen) {
			HoVaTen = hoVaTen;
		}
		public String getMSSV() {
			return MSSV;
		}
		public void setMSSV(String mSSV) {
			MSSV = mSSV;
		}
		public String getHinhAnh() {
			return HinhAnh;
		}
		public void setHinhAnh(String hinhAnh) {
			HinhAnh = hinhAnh;
		}
	}
	
	public static void demoCopy1Item(){
		SinhVien sv = new SinhVien();
		sv.setHo("Duong");
		sv.setTen(" Van Hung");
		sv.setHinhAnh("avt cua hung");
		sv.setMSSV("mssv cua hung");
		
		//demo 1 sinh vien
		//thuc hien viec copy tung phan tu co ten truong giong tu SinhVien qua SinhVienViewModel
		SinhVienViewModel svViewModel = new SinhVienViewModel();
		try {
			svViewModel = Mapper.copy(sv, SinhVienViewModel.class, new IOnMapper<SinhVienViewModel,SinhVien>() {
				//thuc hien copy them 1 vai thuoc tinh khong giong bang tay
				@Override
				public void onMapperItem(SinhVienViewModel to, SinhVien from) {
					to.HoVaTen = from.getHo() + from.getTen();
				}
			});
			
			System.out.println("Ho va ten: "+ svViewModel.getHoVaTen());
			System.out.println("Hinh anh: "+ svViewModel.getHinhAnh());
			System.out.println("MSSV: "+ svViewModel.getMSSV());
			
		} catch (InstantiationException | IllegalAccessException e) {
			e.printStackTrace();
		}
	}
	
	public static void demoCopy1List(){
		ArrayList<SinhVien> svs = new ArrayList<>();
		
		SinhVien sv = new SinhVien();
		sv.setHo("Duong");
		sv.setTen(" Van Hung");
		sv.setHinhAnh("avt cua hung");
		sv.setMSSV("mssv cua hung");
		
		svs.add(sv);
		
		sv = new SinhVien();
		sv.setHo("Pham");
		sv.setTen(" Tri Thuc");
		sv.setHinhAnh("avt cua thuc");
		sv.setMSSV("mssv cua thuc");
		
		svs.add(sv);
		
		sv = new SinhVien();
		sv.setHo("Phan");
		sv.setTen(" Van Thinh");
		sv.setHinhAnh("avt cua thinh");
		sv.setMSSV("mssv cua thinh");
		
		svs.add(sv);
		
		sv = new SinhVien();
		sv.setHo("Pham");
		sv.setTen(" Minh Man");
		sv.setHinhAnh("avt cua man");
		sv.setMSSV("mssv cua man");
		
		svs.add(sv);
		
		//demo 1 sinh vien
		//thuc hien viec copy tung phan tu co ten truong giong tu SinhVien qua SinhVienViewModel
		ArrayList<SinhVienViewModel> svViewModels = new ArrayList<>();
		try {
			svViewModels = Mapper.copy(svs, SinhVienViewModel.class, new IOnMapper<SinhVienViewModel,SinhVien>() {
				//thuc hien copy them 1 vai thuoc tinh khong giong bang tay
				@Override
				public void onMapperItem(SinhVienViewModel to, SinhVien from) {
					to.HoVaTen = from.getHo() + from.getTen();
				}
			} );
			
			
			
			for(SinhVienViewModel svViewModel : svViewModels){
				System.out.println("Ho va ten: "+ svViewModel.getHoVaTen());
				System.out.println("Hinh anh: "+ svViewModel.getHinhAnh());
				System.out.println("MSSV: "+ svViewModel.getMSSV());
			}
			
			
			
		} catch (InstantiationException | IllegalAccessException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args){
		demoCopy1List();
	}
}
