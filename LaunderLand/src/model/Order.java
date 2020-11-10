package model;

public class Order {
	private int orderNo;
	private int itemCount;
	private String weight;
	private String pickupLoc;
	private String pickupDate;
	private String pickupTime;
	private String dropLoc;
	private String dropTime;
	private String dropDate;
	private String orderDate;
	private String description;
	private String serviceType;
	private int userId;
	
	//Order Constructor (parameterized)
	public Order(int orderNo, int itemCount, String weight, String pickupLoc, String pickupDate, String pickupTime,
			String dropLoc, String dropTime, String dropDate, String orderDate, String description, String serviceType,
			int userId) {
		this.orderNo = orderNo;
		this.itemCount = itemCount;
		this.weight = weight;
		this.pickupLoc = pickupLoc;
		this.pickupDate = pickupDate;
		this.pickupTime = pickupTime;
		this.dropLoc = dropLoc;
		this.dropTime = dropTime;
		this.dropDate = dropDate;
		this.orderDate = orderDate;
		this.description = description;
		this.serviceType = serviceType;
		this.userId = userId;
	}
	
	//getters
	public int getOrderNo() {
		return orderNo;
	}
	
	public int getItemCount() {
		return itemCount;
	}
	
	public String getWeight() {
		return weight;
	}
	
	public String getPickupLoc() {
		return pickupLoc;
	}
	
	public String getPickupDate() {
		return pickupDate;
	}
	
	public String getPickupTime() {
		return pickupTime;
	}
	
	public String getDropLoc() {
		return dropLoc;
	}
	
	public String getDropTime() {
		return dropTime;
	}
	
	public String getDropDate() {
		return dropDate;
	}
	
	public String getOrderDate() {
		return orderDate;
	}
	
	public String getDescription() {
		return description;
	}
	
	public String getServiceType() {
		return serviceType;
	}
	
	public int getUserId() {
		return userId;
	}
}
