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

//This servlet is used to display user details in the edit profile page

@WebServlet("/DisplayUserServlet")
public class DisplayUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public DisplayUserServlet() {
        super();
        
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//creating a http session to get attributes
		HttpSession session = request.getSession();
		String pass = (String) session.getAttribute("pwd");
		String userName = (String) session.getAttribute("userName");
		
		try {
			//invoking validate function
			List<User> userDetails = UserDBUtil.validate(userName, pass);
			boolean bool = userDetails.isEmpty();
			
			System.out.println(bool);
			//checking the status of the validation operation
			if(bool == false) {
				request.setAttribute("userDetails", userDetails);
				//redirect to the edit profile page
				RequestDispatcher dis = request.getRequestDispatcher("editProfile.jsp");
				dis.forward(request, response);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
