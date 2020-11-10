package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Employee;

//This DAO class provides CRUD database operations for the table employees in the database
public class EmployeeDAO {
	

	private static String url = "jdbc:mysql://localhost:3306/lmsdb";
	private static String username = "root";
	private static String password = "nishanniriella12345";
	
	private static final String INSERT_EMPLOYEES_SQL = "INSERT INTO employees" + "(name,email,career_type) VALUES"
   + "(?,?,?)";
	
	private static final String SELECT_EMPLOYEE_BY_ID = "select id,name,email,career_type from employees where id =?;";
	private static final String SELECT_ALL_EMPLOYEES = "select * from employees";
	private static final String DELETE_EMPLOYEES_SQL = "delete from employees where id = ?;";
	private static final String UPDATE_EMPLOYEES_SQL = "update employees set name = ?,email = ?,career_type =? where id =?;";
	
	protected  Connection getConnection() {
		
		Connection connection = null;
		
		
		 try {
			Class.forName("com.mysql.jdbc.Driver");
			try {
				connection = DriverManager.getConnection(url,username,password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		 }
		
		return connection;
		
		
	}
    

    //create employee or insert employee
	public void insertEmployee(Employee employee) throws SQLException {
		try(Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_EMPLOYEES_SQL)){
				
			preparedStatement.setString(1,employee.getName());
			preparedStatement.setString(2,employee.getEmail());
			preparedStatement.setString(3,employee.getCareer_type());
			preparedStatement.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
			
			
		}
	
	 //update employee
		public boolean updateEmployee(Employee employee) throws SQLException {
		      boolean rowUpdated ;
		      try(Connection connection = getConnection();
		    		  PreparedStatement statement = connection.prepareStatement(UPDATE_EMPLOYEES_SQL);){
		    	  
		    	  statement.setString(1,employee.getName());
		    	  statement.setString(2,employee.getEmail());
		    	  statement.setString(3,employee.getCareer_type());
		    	  statement.setInt(4,employee.getId());
		    	  
		    	  rowUpdated = statement.executeUpdate() > 0;
		    	  	  
		      }
		    		   
			return rowUpdated;
		
		}
		
		//select employee by id
		public  Employee selectEmployee(int id) {
			Employee employee = null;
			// step 1: Establishing a Connection
			try(Connection connection = getConnection();
				    //step 2: create a statement using connection object
				    PreparedStatement preparedStatement = connection.prepareStatement(SELECT_EMPLOYEE_BY_ID);){
				preparedStatement.setInt(1,id);
				//System.out.println(preparedStatement);
				//step 3: Execute the query or  update query
				ResultSet rs = preparedStatement.executeQuery(); 
				
				//step 4 : Process the ResultSet object
				while(rs.next()) {
					String name = rs.getNString("name");
					String email = rs.getString("email");
					String career_type = rs.getString("career_type");
					employee = new Employee(id,name,email,career_type);
					
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				
			return employee;
				
		}
		
		
		//select employees
		public List<Employee> selectAllEmployee() {
			List<Employee> employees = new ArrayList<>();
			// step 1: Establishing a Connection
			try(Connection connection = getConnection();
				//step 2: create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_EMPLOYEES);){
				    //System.out.println(preparedStatement);
				//step 3: Execute the query or  update query
				ResultSet rs = preparedStatement.executeQuery(); 
				
				//step 4 : Process the ResultSet object
				while(rs.next()) {
					int id = rs.getInt("id");
					String name = rs.getNString("name");
					String email = rs.getString("email");
					String career_type = rs.getString("career_type");
					employees.add(new Employee(id,name,email,career_type));
					
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				
			return employees;
				
				
		  }
		
		//delete employee
		public boolean deleteEmployee(int id) throws SQLException {
		    boolean rowDeleted;
		    try (Connection connection = getConnection();
		    		PreparedStatement statement = connection.prepareStatement(DELETE_EMPLOYEES_SQL );){
		    	statement.setInt(1,id);
		    	rowDeleted = statement.executeUpdate()> 0;
		    	
		    
		    }
			return rowDeleted;
		    			    		
		}

}
