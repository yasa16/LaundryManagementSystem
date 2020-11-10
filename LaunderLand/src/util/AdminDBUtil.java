package util;

import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import connection.DBConnection;
import model.Admin;
import model.Dashboad;
import model.Price;

import java.sql.Connection;

public class AdminDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	// Login Validation using username and passowrd
	public static Admin validate(String userName, String password) {
		Admin admin = null;

		try {
			// getting the database connection through DB_Connect class
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			// create sql statement to check the validity of the user name and password
			String sql = "select * from admin_db where username = '" + userName + "' and password = '" + password + "'";

			// create a result set
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userN = rs.getString(5);
				String passw = rs.getString(6);

				// Calling admin constructor using parameters
				admin = new Admin(id, name, email, phone, userN, passw);
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		// return admin object
		return admin;
	}

	// get details to dashboard
	public static Dashboad GetDashboadDetails() {
		Dashboad dashboadData = null;

		int totalInquires = 0; // = 150;
		int TotalOrders = 0; // = 50;
		int pendingorders = 0; //= 20;
		int processingInquires = 0; // = 10;

		try {

			// getting the database connection through DB_Connect class
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			/*
			// create sql statement for get total count of the inquirey
			String sql = "select COUNT(*) AS rowcount from item_price";// table need to change for inquery
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				totalInquires = rs.getInt("rowcount");
			}

			
			  rs = null; //create sql statement for get total count of the orders
			  String sql2 = "select COUNT(*) AS rowcount from order"; 
			  rs =stmt.executeQuery(sql2);
			  
			  System.out.println(rs);
			  
			  if(rs.next()) { TotalOrders = rs.getInt("rowcount"); }
			  
			  rs = null; //create sql statement for get pending orders 
			  String sql3="select COUNT(*) AS rowcount from order where dropOffDate is null"; 
			  rs=stmt.executeQuery(sql3);
			  
			  if(rs.next()) { pendingorders = rs.getInt("rowcount"); }
			  
			  rs = null; //create sql statement for processing inquiries 
			  String sql4 ="select COUNT(*) AS rowcount from inquiry where status != 'Completed'"; 
			  rs=stmt.executeQuery(sql4);
			  
			  
			  if(rs.next()) { processingInquires = rs.getInt("rowcount"); }
			 */

			// Calling dashboard constructor using parameters
			dashboadData = new Dashboad(totalInquires, TotalOrders, pendingorders, processingInquires);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return dashboadData;
	}

	// price list
	public static Price validatePriceList(String iCode, String iName) {
		Price price = null;

		try {
			// getting the database connection through DB_Connect class
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			String sql = "select * from item_price where item_code ='" + iCode + "' and item_name = '" + iName + "' ";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				int item_code = rs.getInt(1);
				String item_name = rs.getString(2);
				String three_days = rs.getString(3);
				String two_days = rs.getString(4);
				String oneday = rs.getString(5);
				String express = rs.getString(6);
				String urgent = rs.getString(7);

				price = new Price(item_code, item_name, three_days, two_days, oneday, express, urgent);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		// return price object
		return price;
	}

	// price list
	public static ArrayList<Price> getPriceList() {
		ArrayList<Price> price = new ArrayList<>();

		try {
			// getting the database connection through DB_Connect class
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			String sql = "select * from item_price";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int item_code = rs.getInt(1);
				String item_name = rs.getString(2);
				String three_days = rs.getString(3);
				String two_days = rs.getString(4);
				String oneday = rs.getString(5);
				String express = rs.getString(6);
				String urgent = rs.getString(7);

				Price p = new Price(item_code, item_name, three_days, two_days, oneday, express, urgent);
				price.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return price;
	}

	// insert price to the database
	public static boolean insertprice(String item_name, String three_days, String two_days, String oneday,
			String express, String urgent) {

		// create boolean variable
		boolean isSuccess = false;

		try {

			// getting the database connection through DB_Connect class
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			// create sql statemet for insert data into price table
			String sql = "insert into item_price values(0,'" + item_name + "','" + three_days + "','" + two_days + "','"
					+ oneday + "','" + express + "','" + urgent + "')";
			int rs = stmt.executeUpdate(sql);

			// check whether the data is insert into the database
			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		// returninig boolean value
		return isSuccess;
	}

	// update admin in the database
	public static boolean updateAdminDetails(String id, String name, String email, String phone, String username,
			String password) {

		try {

			// getting the database connection through DB_Connect class
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			// create sql statement to update admin details in the database
			String sql = "update admin_db set name='" + name + "',email= '" + email + "', phone= '" + phone
					+ "', username= '" + username + "', password= '" + password + "'" + "where id = '" + id + "'";

			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			}

			else {
				isSuccess = false;
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		// return boolean value
		return isSuccess;
	}

	// update price in the database
	public static boolean updatePriceDetails(String Item_code, String Item_name, String Three_days, String Two_days,
			String Oneday, String Express, String Urgent) {

		try {

			// getting the database connection through DB_Connect class
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			// create sql statement to update price list in the database
			String sql = "update item_price set Item_name ='" + Item_name + "',Three_days='" + Three_days
					+ "',Two_days='" + Two_days + "',Oneday='" + Oneday + "',Express='" + Express + "',Urgent='"
					+ Urgent + "'" + "where Item_code = '" + Item_code + "'";

			int rs = stmt.executeUpdate(sql);

			// check whether the admin details are updated
			if (rs > 0) {
				isSuccess = true;
			}

			else {
				isSuccess = false;
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		// return boolean value
		return isSuccess;
	}

	// retreiw data of admin
	public static Admin getAdminDetails(String Id) {

		// convert id into int value
		int convertedID = Integer.parseInt(Id);

		Admin admin = null;

		try {

			// getting the database connection through DB_Connect class
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			// create a sql statement for retriew the admin details
			String sql = "select * from admin_db where id ='" + convertedID + "'";
			rs = stmt.executeQuery(sql);

			// create a while loop to assign the values of the database
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);

				// create a admin object and pass the values
				admin = new Admin(id, name, email, phone, username, password);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return admin;
	}

	// retriew data of price from the database
	public static List<Price> getPriceDetails(String itemCode) {

		// convert item code into int item code
		int convertedItemCode = Integer.parseInt(itemCode);

		ArrayList<Price> price = new ArrayList<>();

		try {

			// getting the database connection through DB_Connect class
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			// create a statement to retreiw the item details from the item price database
			String sql = "select * from item_price where item_code = '" + convertedItemCode + "' ";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int item_code = rs.getInt(1);
				String item_name = rs.getString(2);
				String three_days = rs.getString(3);
				String two_days = rs.getString(4);
				String oneday = rs.getString(5);
				String express = rs.getString(6);
				String urgent = rs.getString(7);

				// create a price object to pass the values
				Price p = new Price(item_code, item_name, three_days, two_days, oneday, express, urgent);
				price.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return price;
	}

	// delete price from the database
	public static boolean deletePrice(String item_code) {

		int convItem_code = Integer.parseInt(item_code);

		try {
			// getting the database connection through DB_Connect class
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			// create sql statement to delete a price from the database
			String sql = "delete from item_price where item_code ='" + convItem_code + "'";

			int rs = stmt.executeUpdate(sql);

			// check whether the excution is done
			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		// returning boolean value
		return isSuccess;
	}
}
