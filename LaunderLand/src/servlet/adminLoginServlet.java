package servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Admin;
import util.AdminDBUtil;

//Servlet implementation class loginServlet

@WebServlet("/adminLoginServlet")
public class adminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	// response)

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// create variable to save user id and user name
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");

		try {
			// call the validate function in the adminDBUtil
			Admin adminDetails = AdminDBUtil.validate(username, password);
			

			// Check admin object is null
			if (adminDetails != null) {
				
				// Create session to keep login details
				HttpSession session = request.getSession();
				session.setAttribute("userId", adminDetails.getId());

				// Admin details are not null redirect to the admin dashboard
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/DashbordServlet");
				dispatcher.forward(request, response);

			}

			else {
				// redirect to the admin login
				request.setAttribute("errorMessage", "Invalid username or password");
				RequestDispatcher dispatcher = request.getRequestDispatcher("adminLogin.jsp");
				dispatcher.forward(request, response);
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}

}
