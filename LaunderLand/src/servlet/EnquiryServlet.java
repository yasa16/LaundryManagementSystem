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

//Inquiry data retrieve and display servlet

@WebServlet("/EnquiryServlet")
public class EnquiryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//String bill_no = request.getParameter("billNo");
		
		try {
			List<Enquiry> enqDetails = EnquiryDBUtil.viewEnquiries();
			request.setAttribute("enqDetails", enqDetails);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("enqAdmin.jsp");
		dis.forward(request, response);

	}

}
