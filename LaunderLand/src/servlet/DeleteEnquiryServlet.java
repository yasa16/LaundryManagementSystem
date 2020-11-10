package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Enquiry;
import util.EnquiryDBUtil;

//Delete enquiry servlet

@WebServlet("/DeleteEnquiryServlet")
public class DeleteEnquiryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("enqID");
		
		boolean isTrue;
		
		isTrue = EnquiryDBUtil.deleteEnquiry(id);
		
		if(isTrue == true) {
			
			List<Enquiry> enqDetails = EnquiryDBUtil.getEnquiryDetails();
			request.setAttribute("enqDetails", enqDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("enqAdmin.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Enquiry> enqDetails = EnquiryDBUtil.getEnquiryDetails();
			request.setAttribute("enqDetails", enqDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("enqAdmin.jsp");
			dis.forward(request, response);
		}
		
	}

}
