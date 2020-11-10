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

@WebServlet("/Update_Admin_Servlet")
public class Update_Admin_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// create variable to save user name
		HttpSession session = request.getSession();
		int userId = (Integer) session.getAttribute("userId");

		try {
			// call the getAdminDetails method in the AdminDBUtil
			Admin adminDetails = AdminDBUtil.getAdminDetails(String.valueOf(userId));

			// If admin details are not null redirect to the adminUserAccount
			if (adminDetails != null) {
				request.setAttribute("adminDetails", adminDetails);
				
				RequestDispatcher dis3 = request.getRequestDispatcher("adminUseraccount.jsp");
				dis3.forward(request, response);
			}
			// If not redirect to the AdminDashboard
			else {
				RequestDispatcher dis3 = request.getRequestDispatcher("AdminDashboard.jsp");
				dis3.forward(request, response);
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("adminID");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");

		boolean isTrue;

		isTrue = AdminDBUtil.updateAdminDetails(id, name, email, phone, username, password);

		if (isTrue == true) {
			Admin adminDetails = AdminDBUtil.getAdminDetails(id);
			request.setAttribute("adminDetails", adminDetails);

			RequestDispatcher dis = request.getRequestDispatcher("adminUseraccount.jsp");
			dis.forward(request, response);
		}

		else {
			Admin adminDetails = AdminDBUtil.getAdminDetails(id);
			request.setAttribute("adminDetails", adminDetails);

			RequestDispatcher dis = request.getRequestDispatcher("adminUseraccount.jsp");
			dis.forward(request, response);
		}
	}

}
