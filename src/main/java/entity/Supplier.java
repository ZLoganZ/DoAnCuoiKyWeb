package entity;

public class Supplier {
	 private int idSupplier;
	   private String nameSupplier;
	    private String phoneSupplier;
	    private String emailSupplier;
	    private String addressSupplier;
	    private int cateID;
		public Supplier(int idSupplier, String nameSupplier, String phoneSupplier, String emailSupplier,
				String addressSupplier, int cateID) {
			
			this.idSupplier = idSupplier;
			this.nameSupplier = nameSupplier;
			this.phoneSupplier = phoneSupplier;
			this.emailSupplier = emailSupplier;
			this.addressSupplier = addressSupplier;
			this.cateID = cateID;
		}
		public Supplier() {
		
		}
		@Override
		public String toString() {
			return "Supplier [idSupplier=" + idSupplier + ", nameSupplier=" + nameSupplier + ", phoneSupplier="
					+ phoneSupplier + ", emailSupplier=" + emailSupplier + ", addressSupplier=" + addressSupplier
					+ ", cateID=" + cateID + "]";
		}
		public int getIdSupplier() {
			return idSupplier;
		}
		public void setIdSupplier(int idSupplier) {
			this.idSupplier = idSupplier;
		}
		public String getNameSupplier() {
			return nameSupplier;
		}
		public void setNameSupplier(String nameSupplier) {
			this.nameSupplier = nameSupplier;
		}
		public String getPhoneSupplier() {
			return phoneSupplier;
		}
		public void setPhoneSupplier(String phoneSupplier) {
			this.phoneSupplier = phoneSupplier;
		}
		public String getEmailSupplier() {
			return emailSupplier;
		}
		public void setEmailSupplier(String emailSupplier) {
			this.emailSupplier = emailSupplier;
		}
		public String getAddressSupplier() {
			return addressSupplier;
		}
		public void setAddressSupplier(String addressSupplier) {
			this.addressSupplier = addressSupplier;
		}
		public int getCateID() {
			return cateID;
		}
		public void setCateID(int cateID) {
			this.cateID = cateID;
		}
}
