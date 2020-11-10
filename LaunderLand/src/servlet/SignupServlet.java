package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.UserDBUtil;

//This is used to record the details of the new users to the database

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SignupServlet() {
        super();
        
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//fetching the inputs from the user registration page 
		String fname = request.getParameter("first");
		String lname = request.getParameter("last");
		String email = request.getParameter("email");
 		String contact = request.getParameter("contact");
		String uName = request.getParameter("userName");
		String pwd = request.getParameter("pass");
		
		boolean isPass;
		//invoking the signup function and storing the status of the operation in a boolean variable 
		isPass = UserDBUtil.signup(fname, lname, email, contact, uName, pwd);
		//checking the status of the operation
		if(isPass == true) {
			RequestDispatcher dis = request.getRequestDispatcher("successSignup.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
