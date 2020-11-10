package model;

//Declare variable for each column of database
//Create parameterized constructor to assign values to the variables
//Create get methods to return the values

public class Enquiry {

	private int enq_id;
	private String name;
	private String bill_no;
	private String address;
	private String phone;
	private String email;
	private String type;
	private String description;
	private String status;
	
	
	public Enquiry(int enq_id, String name, String bill_no, String address, String phone, String email, String type, String description, String status) {
		this.enq_id = enq_id;
		this.name = name;
		this.bill_no = bill_no;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.type = type;
		this.description = description;
		this.status = status;
	}


	public int getEnq_id() {
		return enq_id;
	}


	public String getName() {
		return name;
	}

	
	public String getBill_no() {
		return bill_no;
	}

	public String getAddress() {
		return address;
	}
	

	public String getPhone() {
		return phone;
	}


	public String getEmail() {
		return email;
	}

	public String getType() {
		return type;
	}


	public String getDescription() {
		return description;
	}

	
	public String getStatus() {
		//status = "Processing";
		return status;
	}

	
}
