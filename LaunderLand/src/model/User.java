package model;

public class User {
	private int userId;
	private String uName;
	private String fName;
	private String lName;
	private String email;
	private String contactNo;
	private String password;
	
	//User Constructor (parameterized)
	public User(int userId, String uName, String fName, String lName, String email, String contactNo, String password) {
		super();
		this.userId = userId;
		this.uName = uName;
		this.fName = fName;
		this.lName = lName;
		this.email = email;
		this.contactNo = contactNo;
		this.password = password;
	}
	
	//getters
	public int getUserId() {
		return userId;
	}
	
	public String getuName() {
		return uName;
	}
	
	public String getfName() {
		return fName;
	}
	
	public String getlName() {
		return lName;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getContactNo() {
		return contactNo;
	}
	
	public String getPassword() {
		return password;
	}
}
