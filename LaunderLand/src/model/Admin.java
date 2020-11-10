package model;

public class Admin {
	// create variables for admin
	private int id;
	private String name;
	private String email;
	private String phone;
	private String userName;
	private String password;

	// create constructors for admin details
	public Admin(int id, String name, String email, String phone, String userName, String password) {

		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.userName = userName;
		this.password = password;
	}

	// create Getters for admin details
	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

}
