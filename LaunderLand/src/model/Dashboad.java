package model;

public class Dashboad {

	// create variables for dashboard
	private int inquires;
	private int TotalOrders;
	private int pendingOrders;
	private int processingInquires;

	// create constructors for admin dashboard
	public Dashboad(int inquires, int TotalOrders, int pendingOrders, int processingInquires) {

		this.inquires = inquires;
		this.TotalOrders = TotalOrders;
		this.pendingOrders = pendingOrders;
		this.processingInquires = processingInquires;
	}

	// create getters for admin dashboard
	public int getInquires() {
		return inquires;
	}

	public int getTotalOrders() {
		return TotalOrders;
	}

	public int getpendingOrders() {
		return pendingOrders;
	}

	public int getprocessingInquires() {
		return processingInquires;
	}

}
