package model;

public class Employee {


	private int id;
	private String name;
	private String email;
	private String career_type;
		
	public Employee(int id, String name, String email, String career_type) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.career_type = career_type;
	}
	
	
	
	public Employee(String name, String email, String career_type) {
		super();
		this.name = name;
		this.email = email;
		this.career_type = career_type;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCareer_type() {
		return career_type;
	}
	public void setCareer_type(String career_type) {
		this.career_type = career_type;
	}
		
	
}
