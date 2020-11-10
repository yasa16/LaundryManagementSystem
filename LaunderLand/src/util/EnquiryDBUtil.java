package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import connection.DBConnection;
import model.Enquiry;

public class EnquiryDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Retrieve all the enquiry data from the data base to the table and dispaly

	public static List<Enquiry> viewEnquiries() {
		
		ArrayList<Enquiry> enq = new ArrayList<>();
		
		//display
		
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from inquiry";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String bill_No = rs.getString(3);
				String address = rs.getString(4);
				String phone = rs.getString(5);
				String email = rs.getString(6);
				String type = rs.getString(7);
				String des = rs.getString(8);
				String status = rs.getString(9);
				
				Enquiry e = new Enquiry(id,name,bill_No,address,phone,email,type,des,status);
				enq.add(e);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return enq;
	}
	
	//Insert enquiry data to the data base
	
	public static boolean insertCustomer(String name, String billNo, String address, String phone, String email, String type, String desc, String status) {
		
		boolean isSuccess = true;
		
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "insert into inquiry values (0,'"+name+"','"+billNo+"','"+address+"','"+phone+"','"+email+"','"+type+"','"+desc+"','"+status+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//Update enquiry status
	
	public static boolean updateEnquiry(String id, String name, String billNo, String address, String phone, String email, String type, String desc, String status) {
		
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "update inquiry set status = '"+status+"'" + "where enq_id = '"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//View updated enquiry data in the  table
	
	public static List<Enquiry> getEnquiryDetails() {
		
		//int convertedenqId = Integer.parseInt(enqId);
		
		ArrayList<Enquiry> enq = new ArrayList<>();
		
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from inquiry";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String bill_No = rs.getString(3);
				String address = rs.getString(4);
				String phone = rs.getString(5);
				String email = rs.getString(6);
				String type = rs.getString(7);
				String des = rs.getString(8);
				String status = rs.getString(9);
				
				Enquiry e = new Enquiry(id,name,bill_No,address,phone,email,type,des,status);
				enq.add(e);
				
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return enq;
	}
	
	//Delete enquiry from the table
	
	public static boolean deleteEnquiry(String id) {
		
		int convertedId = Integer.parseInt(id);
		
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "delete from inquiry where enq_id = '"+convertedId+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
}
