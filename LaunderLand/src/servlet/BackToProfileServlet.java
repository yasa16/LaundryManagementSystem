package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;
import util.UserDBUtil;

//This servlet is used to reload user profile in case of pressing back to profile buttons, after the login is done

@WebServlet("/BackToProfile")
public class BackToProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BackToProfileServlet() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//calling to http session to validate the login
		HttpSession session = request.getSession();
		int uid = (int)session.getAttribute("userId");
		String pass = (String) session.getAttribute("pwd");
		String userName = (String) session.getAttribute("userName");
		System.out.println(uid);
		System.out.println(pass);
		System.out.println(userName);
		
		try {
			//creating an array list to invoke validate function
			List<User> userDetails = UserDBUtil.validate(userName, pass);
			//checking the userdetails array list is empty or not
			boolean ans = userDetails.isEmpty();
			
			if(ans == false) {
				//what to send to account page
				request.setAttribute("userDetails", userDetails);
				//redirect to the profile page
				RequestDispatcher dis = request.getRequestDispatcher("profile.jsp");
				dis.forward(request, response);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}

