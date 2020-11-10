package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Price;
import util.AdminDBUtil;

/**
 * Servlet implementation class PriceListForCustomerServlet
 */
@WebServlet("/PriceListForCustomerServlet")
public class PriceListForCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			// call the getPriceList method form the AdminDBUtil
			ArrayList<Price> priceList = AdminDBUtil.getPriceList();

			// If price list is not null redirect to Our_Price.jsp
			if (priceList != null) {
				request.setAttribute("prList", priceList);

				RequestDispatcher dis3 = request.getRequestDispatcher("Our_Price.jsp");
				dis3.forward(request, response);

			}
			// If not redirect to the Our_Price.jsp
			else {
				RequestDispatcher dis3 = request.getRequestDispatcher("Our_Price.jsp");
				dis3.forward(request, response);
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}

}
