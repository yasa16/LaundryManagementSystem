package servlet;

import java.io.IOException;
import java.util.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;
import util.UserDBUtil;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName = request.getParameter("uid");
		String pwd = request.getParameter("pwd");
		try {
			//validating user entered username and password by invoking validate function
			List<User> userDetails = UserDBUtil.validate(userName, pwd);	
			//checking the return of the validate function
			boolean ans = userDetails.isEmpty();
		
			if(ans == false) {
				
				//what to send to account page
				request.setAttribute("userDetails", userDetails);
				
				//creating a session, setting attributes for the logged user
				int uid = UserDBUtil.getSessionAttributes(userName, pwd);
				HttpSession session = request.getSession();
				session.setAttribute("userId", uid);
				
				String pass = UserDBUtil.getUserPwSession(uid);
				session.setAttribute("pwd", pass);
				
				String uname = UserDBUtil.getUserNameSession(uid);
				session.setAttribute("userName", uname);

				//redirect user to the profile page
				RequestDispatcher dis = request.getRequestDispatcher("profile.jsp");
				dis.forward(request, response);
			}
			else {
				//if the login is unsuccessful, redirect to the login page again
				request.setAttribute("errorMessage", "Invalid username or password");
				RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
				dis.forward(request, response);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}			
	}

}
