package servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.AdminDBUtil;

@WebServlet("/Update_Price_Servlet")
public class Update_Price_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// create variables to save price details
		String Item_code = request.getParameter("icode");
		String Item_name = request.getParameter("name");
		String Three_days = request.getParameter("threedays");
		String Two_days = request.getParameter("twodays");
		String Oneday = request.getParameter("oneday");
		String Express = request.getParameter("express");
		String Urgent = request.getParameter("urgent");

		// create a boolean variable
		boolean isTrue;

		isTrue = AdminDBUtil.updatePriceDetails(Item_code, Item_name, Three_days, Two_days, Oneday, Express, Urgent);

		// If price details are updated into database success redirect to the
		// OurpriceList
		if (isTrue == true) {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/OurPriceList");
			dispatcher.forward(request, response);
		}

		else {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/OurPriceList");
			dispatcher.forward(request, response);
		}
	}

}
