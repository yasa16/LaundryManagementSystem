
package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnection;
import model.Order;

public class OrderDBUtil {
	//local variables	
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet res = null;
		
	public static List<Order> getOrders(int uid) {
			ArrayList<Order> order = new ArrayList<>();
			
			try {
				//getting database connection thru DBConnection class
				con = DBConnection.getConnection();
				st = con.createStatement();
				//sql statement to retrieve order details form the table
				String sql = "SELECT * FROM lmsdb.order where userId="+uid;
				System.out.println(sql);
				System.out.println(st);
				//execute query
				res = st.executeQuery(sql);
					
				while(res.next()) {
					//fetching details from the table to the variables
					int orderId = res.getInt(1);
					int itemCount = res.getInt(2);
					String weight = res.getString(3);
					String oDate = res.getString(4);
					String pDate = res.getString(5);
					String pLoc = res.getString(6);
					String pTime = res.getString(7);
					String dLoc = res.getString(8);
					String dTime = res.getString(9);
					String dDate = res.getString(10);
					String des = res.getString(11);
					String service = res.getString(12);
					//creating an object from the order through the constructor
					Order obj = new Order(orderId, itemCount, weight, pLoc, pDate, pTime,
							 dLoc, dTime, dDate, oDate, des, service, uid);
					//Adding object to the array list
					order.add(obj);
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			//returning order object	
			return order;
	}
	
	public static List<Order> getOrders() {
		ArrayList<Order> order = new ArrayList<>();
		
		try {
			//getting database connection thru DBConnection class
			con = DBConnection.getConnection();
			st = con.createStatement();
			//sql statement to retrieve order details form the table
			String sql = "SELECT * FROM lmsdb.order";
			System.out.println(sql);
			System.out.println(st);
			//execute query
			res = st.executeQuery(sql);
				
			while(res.next()) {
				//fetching details from the table to the variables
				int orderId = res.getInt(1);
				int itemCount = res.getInt(2);
				String weight = res.getString(3);
				String oDate = res.getString(4);
				String pDate = res.getString(5);
				String pLoc = res.getString(6);
				String pTime = res.getString(7);
				String dLoc = res.getString(8);
				String dTime = res.getString(9);
				String dDate = res.getString(10);
				String des = res.getString(11);
				String service = res.getString(12);
				int uId = res.getInt(13);
				//creating an object from the order through the constructor
				Order obj = new Order(orderId, itemCount, weight, pLoc, pDate, pTime,
						 dLoc, dTime, dDate, oDate, des, service, uId);
				//Adding object to the array list
				order.add(obj);
				System.out.println("Heree");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		//returning order object	
		return order;
	}
	
	public static boolean cancelOrder(String orderid) {
		boolean isCancelled = false;
			
		try {
			//getting a database connection through DBConnection class
			con = DBConnection.getConnection();
			st = con.createStatement();
			
			//sql query for delete
			String sql = "delete from lmsdb.order where orderId="+orderid;
			System.out.println(sql);
			//execute the query and returns two values as 1(true) or 0(false) after executing the query
			int result = st.executeUpdate(sql);

			if(result > 0) {
				isCancelled = true;
			} else {
				isCancelled = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		//returning boolean value
		return isCancelled;
	}
		
		
	public static boolean orderPlacement(int uid, String countItem, String itemWeight, String pLoc, String pDate, String pTime, String dLoc, String dTime, String dDate, 
			String des, String service) {	
		boolean isOrdered = false;
		try {
			//Getting the database connection through DBConnection class
			con = DBConnection.getConnection();
			st = con.createStatement();
					
			//sql statement to insert order to the database
			String sql = "insert into lmsdb.order(itemCount,weight,pickupDate,pickupLocation,pickupTime,dropOffLocation,dropOffTime,dropOffDate,description,serviceType,userId)"
					+ " values('"+countItem+"','"+itemWeight+"','"+pDate+"','"+pLoc+"','"+pTime+"','"+dLoc+"','"+dTime+"','"+dDate+"','"+des+"','"+service+"',"+uid+")";
			System.out.println(sql);	
			//execute the query and returns two values as 1(true) or 0(false) after executing the query
			int result = st.executeUpdate(sql);
			System.out.println(result+"This is the result from orderDBUtil");
			
			//Check whether the execution of sql query is done
			if(result > 0) {
				isOrdered = true;
			} else {
				isOrdered = false;
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
			System.out.println("From DBUtil");
		}
		//returning boolean value	
		return isOrdered;
	}
	
}
			
















