package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.AdminDBUtil;

@WebServlet("/insertPrice")
public class insertPrice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// create variables for store data of the price list
		String item_name = request.getParameter("name");
		String three_days = request.getParameter("normal");
		String two_days = request.getParameter("twodays");
		String oneday = request.getParameter("oneday");
		String express = request.getParameter("express");
		String urgent = request.getParameter("urgent");

		// create a boolean variable
		boolean isTrue;

		isTrue = AdminDBUtil.insertprice(item_name, three_days, two_days, oneday, express, urgent);

		// If price details are insert into database success redirect to the
		// OurpriceList
		if (isTrue == true) {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/OurPriceList");
			dispatcher.forward(request, response);
		}
		// If not redirect to unsuccess.jsp page
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccessAdmin.jsp");
			dis2.forward(request, response);
		}

	}

}
