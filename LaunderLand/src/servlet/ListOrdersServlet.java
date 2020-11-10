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

//This servlet is used to list the orders according to a particular user

@WebServlet("/ListOrdersServlet")
public class ListOrdersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ListOrdersServlet() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		try {
			//creating a session to get user id
			HttpSession session = request.getSession();
			int uid = (int)session.getAttribute("userId");
			System.out.println(uid);
			//invoking getOrders function
			List<Order> listOrder = OrderDBUtil.getOrders(uid);
			
			request.setAttribute("listOrders", listOrder);
			//redirecting user to the order list page
			RequestDispatcher dis = request.getRequestDispatcher("orderList.jsp");
			dis.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("Here"+ e);
		}
		
		
	}

}
