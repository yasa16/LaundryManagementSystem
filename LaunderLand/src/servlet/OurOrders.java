package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Order;
import util.OrderDBUtil;

@WebServlet("/OurOrders")
public class OurOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public OurOrders() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//invoking getUserList from User DB Util class
			List<Order> OrderList = OrderDBUtil.getOrders();

			// Checking the user list
			if (OrderList != null) {
				request.setAttribute("oList", OrderList);
				
				RequestDispatcher dis = request.getRequestDispatcher("DisplayOrders.jsp");
				dis.forward(request, response);

			}

			else {
				RequestDispatcher dis = request.getRequestDispatcher("unsucessAdmin.jsp");
				dis.forward(request, response);
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}

}
