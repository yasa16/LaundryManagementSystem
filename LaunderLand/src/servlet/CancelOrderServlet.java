package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Order;
import util.OrderDBUtil;

//This servlet is used to cancel the orders when the cancel button pressed

@WebServlet("/CancelOrderServlet")
public class CancelOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			//getting order id through the post method
			String ordId = request.getParameter("oId");
			System.out.println(ordId);
			//creating a boolean variable to store the execution status
			boolean isCancelled = OrderDBUtil.cancelOrder(ordId);
			//checking the execution status 
			if(isCancelled == true) {
				//creating a http session to get attributes
				HttpSession session = request.getSession();
				int uid = (int)session.getAttribute("userId");
				
				System.out.println(uid);
				//recalling the orders related to the userid
				List<Order> listOrder = OrderDBUtil.getOrders(uid);
				
				request.setAttribute("listOrders", listOrder);
				//redirecting user to the orderlist after the delete operation
				RequestDispatcher dis = request.getRequestDispatcher("orderList.jsp");
				dis.forward(request, response);
				response.sendRedirect("listOrders");
			} else {
				//if anything went wrong, redirect to unsuccess page
				RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
				dis2.forward(request, response);
		}
		} catch(Exception e) {
			System.out.println("Problem with the conversion of orderId to int!");
			e.printStackTrace();
		}
		
	}

}
