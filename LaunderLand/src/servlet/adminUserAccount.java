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

/**
 * Servlet implementation class adminUserAccount
 */
@WebServlet("/adminUserAccount")
public class adminUserAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// create variable to save user name
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");

		try {
			// call the getAdminDetails in the AdminDBUtil
			Admin adminDetails = AdminDBUtil.getAdminDetails(username);

			// If admin details are not null redirect to the admin user account
			if (adminDetails != null) {
				request.setAttribute("adminDetails", adminDetails);

				RequestDispatcher dis3 = request.getRequestDispatcher("adminUseraccount.jsp");
				dis3.forward(request, response);
			}
			// If not redirect to the admin dashboard
			else {
				RequestDispatcher dis3 = request.getRequestDispatcher("AdminDashboard.jsp");
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
