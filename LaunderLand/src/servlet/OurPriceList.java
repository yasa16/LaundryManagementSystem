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
 * Servlet implementation class OurPriceList
 */
@WebServlet("/OurPriceList")
public class OurPriceList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			// get price list from admindbutil
			ArrayList<Price> priceList = AdminDBUtil.getPriceList();

			// if the price list is not null redirect to the OurPriceList
			if (priceList != null) {
				request.setAttribute("prList", priceList);

				RequestDispatcher dis3 = request.getRequestDispatcher("OurPriceList.jsp");
				dis3.forward(request, response);

			}

			else {
				RequestDispatcher dis3 = request.getRequestDispatcher("OurPriceList.jsp");
				dis3.forward(request, response);
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
