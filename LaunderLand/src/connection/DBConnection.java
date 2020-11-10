package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection implements ConInf{
	private static Connection con;
	
	//creating a static method to get connection to access database
	//static function used for the ease of access the method from another class by only using DBConnection class name
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);
		}
		catch(Exception e) {
			System.out.println("There was an error in database connection!");
		}
		//returning connection
		return con;
	}
}
