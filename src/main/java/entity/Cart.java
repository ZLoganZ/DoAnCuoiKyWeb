package entity;

public class Cart {
	 private int accountID;
	 private int productID;
	 private int amount;
	 private int maCart;
	 private String size;
	public Cart(int accountID, int productID, int amount, int maCart, String size) {
	
		this.accountID = accountID;
		this.productID = productID;
		this.amount = amount;
		this.maCart = maCart;
		this.size = size;
	}
	public Cart() {
		
	}
	public int getAccountID() {
		return accountID;
	}
	public void setAccountID(int accountID) {
		this.accountID = accountID;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getMaCart() {
		return maCart;
	}
	public void setMaCart(int maCart) {
		this.maCart = maCart;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	@Override
	public String toString() {
		return "Cart [accountID=" + accountID + ", productID=" + productID + ", amount=" + amount + ", maCart=" + maCart
				+ ", size=" + size + "]";
	} 
	 
	
}
