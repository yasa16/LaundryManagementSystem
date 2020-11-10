package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

import connection.DBConnection;
import model.User;


public class UserDBUtil {
	//Local variables
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet res = null;
	
	public static List<User> validate(String userName, String password){
		
		ArrayList<User> userObj = new ArrayList<>();
			
		//validating the user credentials 
		try {
			con = DBConnection.getConnection();
			st = con.createStatement();
			//sql query to validate and retrieve user data
			String sql = "select * from user where (userName='"+ userName + "'or email ='" +userName+"')and password ='"+ password + "'";
			
			//executing the query
			res = st.executeQuery(sql);
			
			if(res.next()) {
				int id = res.getInt(1);
				String fname = res.getString(2);
				String lname = res.getString(3);
				String uName = res.getString(4);
				String email = res.getString(5);
				String phone = res.getString(6);
				String pswd = res.getString(7);
				
				//creating user object to store data retrieved from the database
				User userOb = new User(id, uName, fname, lname, email, phone, pswd);
				
				//adding userOb to the array list
				userObj.add(userOb);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return userObj;
	}
	
	public static boolean signup(String first, String last, String email, String mobile, String uName, String password) {
		boolean isSuccess = false;		
		try {
			con = DBConnection.getConnection();
			st = con.createStatement();
			//insert query 
			String sql = "insert into user values(0,'"+first+"','"+last+"','"+uName+"','"+email+"','"+mobile+"','"+password+"')";
			
			//execute the query and returns two values as 1(true) or 0(false) after executing the query
			int result = st.executeUpdate(sql);
			
			//Checking the result
			if(result > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updateUser(String id, String first, String last, String uName, String email, String mobile, String password) {
		boolean isUpdated = false;
		try {
			//getting database connection through DBConnection class
			con = DBConnection.getConnection();
			st = con.createStatement();
			
			//update query
			String sql = "update user set fName = '"+first+"',lName = '"+last+"',userName = '"+uName+"',email = '"+email+"',contactNo = '"+mobile+"',password ='"+password+"'"
					+ "where userId ='"+id+"'";
			System.out.println(sql);
			
			//execute the update query and returns two values as 1(true) or 0(false) after executing the query
			int result = st.executeUpdate(sql);
			System.out.println(result);
			
			//checking the query has executed or not
			if(result > 0) {
				isUpdated = true;
			} else {
				isUpdated = false;
			}
		}
		catch(Exception e) {
			System.out.println("There was a problem in updating user details!");
		}
		//returning boolean value
		return isUpdated;
	}
	
	//This method is used to create session for userId
	public static int getSessionAttributes(String uName, String pwd) {
		int userId = 0;
		try {
			//getting database connection through DBConnection class
			con = DBConnection.getConnection();
			st = con.createStatement();
			//sql query to get user name 
			String sql = "select * from user where userName ='"+uName
					+"'and password ='"+pwd+"'";
			//execute the query and returns two values as 1(true) or 0(false) after executing the query
			res = st.executeQuery(sql);
			
			if(res.next()) {
				//storing userId to the variable
				userId = res.getInt(1);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		//returning user id
		return userId;
	}
	
	//This method is used to create session for user password
	public static String getUserPwSession(int uid) {
		String pswrd = null;
		try {
			//getting database connection through DBConnection class
			con = DBConnection.getConnection();
			st = con.createStatement();
			//sql query to select all the fields of the user table related to the userId
			String sql = "select * from user where userId ='"+uid
					+"'";
			//execute the query and returns two values as 1(true) or 0(false) after executing the query
			res = st.executeQuery(sql);
			System.out.println(res);
			//Checking whether the sql statement executed successfully or not
			if(res.next()) {
				//fetching the user password from the database
				pswrd = res.getString(7);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		//returning the password
		return pswrd;
	}
	
	//This method is used to create session for user name
	public static String getUserNameSession(int uid) {
		String user = null;
		try {
			//getting database connection through DBConnection class
			con = DBConnection.getConnection();
			st = con.createStatement();
			//sql query to select all the fields of the user table related to the userId
			String sql = "select * from user where userId ='"+uid
					+"'";
			//execute the query and returns two values as 1(true) or 0(false) after executing the query
			res = st.executeQuery(sql);
			System.out.println(res);
			//Checking whether the sql statement executed successfully or not
			if(res.next()) {
				//fetching user name from the table
				user = res.getString(4);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		//returning user name
		return user;
	}
	
	public static ArrayList<User> getUserList() {
		ArrayList<User> userObj = new ArrayList<>();

		try {
			//getting database connection through DBConnection class
			con = DBConnection.getConnection();
			st = con.createStatement();
			
			//sql query to select all users
			String sql = "select * from user";
			//executing the query
			res = st.executeQuery(sql);
			
			//fetching data from the database
			while (res.next()) {
				int id = res.getInt(1);
				String fname = res.getString(2);
				String lname = res.getString(3);
				String uName = res.getString(4);
				String email = res.getString(5);
				String phone = res.getString(6);
				String pswd = res.getString(7);

				//creating user object to store data retrieved from the database
				User userOb = new User(id, uName, fname, lname, email, phone, pswd);
				
				//adding userOb to the array list
				userObj.add(userOb);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		//returning the array list user object
		return userObj;
	}
	
}




















