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

//Inquiry update servlet

@WebServlet("/UpdateEnquiryServlet")
public class UpdateEnquiryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("enqID");
		String name = request.getParameter("name");
		String billNo = request.getParameter("billNo");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String type = request.getParameter("type");
		String description = request.getParameter("description");
		String status = request.getParameter("status");
		
		boolean isTrue;
		
		isTrue = EnquiryDBUtil.updateEnquiry(id, name, billNo, address, phone, email, type, description, status);
		
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
