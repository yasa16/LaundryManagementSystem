package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.User;
import util.UserDBUtil;

@WebServlet("/OurUsers")
public class OurUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public OurUsers() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			//invoking getUserList from User DB Util class
			ArrayList<User> UserList = UserDBUtil.getUserList();

			// Checking the user list
			if (UserList != null) {
				request.setAttribute("uList", UserList);
				
				RequestDispatcher dis = request.getRequestDispatcher("DisplayUsers.jsp");
				dis.forward(request, response);

			}

			else {
				RequestDispatcher dis = request.getRequestDispatcher("unsucessAdmin.jsp");
				dis.forward(request, response);
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}

}
