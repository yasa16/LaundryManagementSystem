package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.OrderDBUtil;

//This servlet is used to record an order to the database

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public OrderServlet() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//creating a session to get attributes
		HttpSession session = request.getSession();
		int uid = (int)session.getAttribute("userId");
		System.out.println(uid);
		//fetching the values from the table to the variables
		String itemCount = request.getParameter("items");
		String weight = request.getParameter("weight");
		String service = request.getParameter("service");
		String pickLoc = request.getParameter("location");
		String pickDate = request.getParameter("pDate");
		String pickTime = request.getParameter("pickupTime");
		String dropLoc = request.getParameter("dropLoc");
		String dropTime = request.getParameter("dropTime");
		String dropDate = request.getParameter("dDate");
		String description = request.getParameter("description");
		
		boolean isPass;
		//Storing the status of the orderPlacement function to the boolean variable
		isPass = OrderDBUtil.orderPlacement(uid, itemCount, weight, pickLoc, pickDate, pickTime, dropLoc, dropTime, dropDate, description, service);
		System.out.println(isPass);
		//checking the status
		if(isPass == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
