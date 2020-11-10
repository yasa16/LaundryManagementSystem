package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.OrderDBUtil;

@WebServlet("/AdminDeleteOrder")
public class AdminDeleteOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				//getting order id through the get method
				String ordId = request.getParameter("oId");
				//storing the status of the cancel order method
				boolean status = OrderDBUtil.cancelOrder(ordId);
				
				System.out.println(status);
				//Checking the status
				if (status == true) {
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/OurOrders");
					dispatcher.forward(request, response);

				} else {
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("unsuccessAdmin.jsp");
					dispatcher.forward(request, response);
				}
	}

}
