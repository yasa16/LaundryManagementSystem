package model;

public class Price {
	// create variables for price
	private int item_code;
	private String item_name;
	private String three_days;
	private String two_days;
	private String oneday;
	private String express;
	private String urgent;

	// create constructors for price
	public Price(int item_code, String item_name, String three_days, String two_days, String oneday, String express,
			String urgent) {

		this.item_code = item_code;
		this.item_name = item_name;
		this.three_days = three_days;
		this.two_days = two_days;
		this.oneday = oneday;
		this.express = express;
		this.urgent = urgent;

	}

	// create getters for price
	public int getItem_code() {
		return item_code;
	}

	public String getItem_name() {
		return item_name;
	}

	public String getThree_days() {
		return three_days;
	}

	public String getTwo_days() {
		return two_days;
	}

	public String getOneday() {
		return oneday;
	}

	public String getExpress() {
		return express;
	}

	public String getUrgent() {
		return urgent;
	}

}
