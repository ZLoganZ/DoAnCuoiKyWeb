package entity;

public class TongChiTieuBanHang {
	 private int userID;
	 private double tongChiTieu;
	 private double tongBanHang;
	public TongChiTieuBanHang(int userID, double tongChiTieu, double tongBanHang) {
		
		this.userID = userID;
		this.tongChiTieu = tongChiTieu;
		this.tongBanHang = tongBanHang;
	}
	public TongChiTieuBanHang() {
		
	}
	@Override
	public String toString() {
		return "TongChiTieuBanHang [userID=" + userID + ", tongChiTieu=" + tongChiTieu + ", tongBanHang=" + tongBanHang
				+ "]";
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public double getTongChiTieu() {
		return tongChiTieu;
	}
	public void setTongChiTieu(double tongChiTieu) {
		this.tongChiTieu = tongChiTieu;
	}
	public double getTongBanHang() {
		return tongBanHang;
	}
	public void setTongBanHang(double tongBanHang) {
		this.tongBanHang = tongBanHang;
	}
	
}
