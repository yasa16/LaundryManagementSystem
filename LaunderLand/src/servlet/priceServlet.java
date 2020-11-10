package servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Price;
import util.AdminDBUtil;

/**
 * Servlet implementation class priceServlet
 */
@WebServlet("/priceServlet")
public class priceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// create variable to save user name
		String iCode = request.getParameter("icode");
		String iName = request.getParameter("iname");

		try {

			Price priceDetails = AdminDBUtil.validatePriceList(iCode, iName);
			request.setAttribute("price", priceDetails);
		} 
		catch (Exception e) {
			e.printStackTrace();
		}

		RequestDispatcher dis = request.getRequestDispatcher("show_price_details.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// create variable to save user name
		String iCode = request.getParameter("icode");
		String iName = request.getParameter("iname");

		try {

			Price priceDetails = AdminDBUtil.validatePriceList(iCode, iName);
			request.setAttribute("price", priceDetails);
		} 
		catch (Exception e) {
			e.printStackTrace();
		}

		RequestDispatcher dis = request.getRequestDispatcher("show_price_details.jsp");
		dis.forward(request, response);
	}

}
