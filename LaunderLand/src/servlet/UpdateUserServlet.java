package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.UserDBUtil;

//This servlet is used to update the user details from the edit profile page

@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateUserServlet() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//fetching user entered values to the variables
		String id = request.getParameter("uid");
		String uName = request.getParameter("userName");
		String fName = request.getParameter("fName");
		String lName = request.getParameter("lName");
		String uMail = request.getParameter("userMail");
		String uPhone = request.getParameter("userContact");
		String uPass = request.getParameter("userPass");
		
		boolean isUpdated;
		//invoking update user function and storing the status in the boolean variable 
		isUpdated = UserDBUtil.updateUser(id, fName, lName, uName, uMail, uPhone, uPass);
		
		//checking the status of the operation
		if(isUpdated == true) {
			//if true, navigate to this page
			RequestDispatcher dis = request.getRequestDispatcher("successUserUpdate.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
