package servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.AdminDBUtil;

@WebServlet("/Delete_Price_Servlet")
public class Delete_Price_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// create variable to save item code
		String Item_code = request.getParameter("icode");

		// create boolean variable
		boolean isTrue;

		isTrue = AdminDBUtil.deletePrice(Item_code);

		// if item is deleted from the database successfully redirect to the OurPriceList
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/OurPriceList");
			dispatcher.forward(request, response);

		} else {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/OurPriceList");
			dispatcher.forward(request, response);
		}

	}

}
